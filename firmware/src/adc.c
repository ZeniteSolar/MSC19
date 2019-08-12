#include "adc.h"

/**
 * @brief inicializa o ADC, configurado para conversão engatilhada com o timer0.
 */
void adc_init(void)
{
    adc.ready = 0;

    //clr_bit(PRR0, PRADC);                           // Activates clock to adc

    // configuracao do ADC
    PORTC   =   0b00000000;                         // disables pull-up for adcs pins
    DDRC    =   0b00000000;                         // all adcs as inputs
    DIDR0   =   0b11111111;                         // digital disable for all adcs

    ADMUX   =   (0 << REFS1)                        // AVcc with external capacitor at AREF pin
            | (1 << REFS0)
#ifdef ADC_8BITS
            | (1 << ADLAR);                         // ADC left adjusted -> using 8bits ADCH only
#else
            | (0 << ADLAR);                         // ADC left adjusted -> using all 10 bits
#endif

    ADCSRB  =   (0 << ADTS2)                        // Auto-trigger source: timer0 Compare Match A
            | (1 << ADTS1)
            | (1 << ADTS0);

    ADMUX = (ADMUX & 0xF8) | 0;                     // Choose admux
    ADCSRA  =   (1 << ADATE)                        // ADC Auto Trigger Enable
            | (1 << ADIE)                           // ADC Interrupt Enable
            | (1 << ADEN)                           // ADC Enable
            | (1 << ADSC)                           // Do the first Start of Conversion
            | (1 << ADPS2)                          // ADC Prescaller = 128;
            | (1 << ADPS1)
            | (1 << ADPS0);

    // TIMER configurations

    //clr_bit(PRR0, PRTIM0);                          // Activates clock to timer0
    // MODE 2 -> CTC with TOP on OCR1
    TCCR0A  =   (1 << WGM01) | (0 << WGM00)         // mode 2
            | (0 << COM0B1) | (0 << COM0B0)         // do nothing
            | (0 << COM0A1) | (0 << COM0A0);        // do nothing

    TCCR0B  =
#if ADC_TIMER_PRESCALER ==     1
                (0 << CS02) | (0 << CS01) | (1 << CS00) // Prescaler N=1
#elif ADC_TIMER_PRESCALER ==   8
                (0 << CS02) | (1 << CS01) | (0 << CS00) // Prescaler N=8
#elif ADC_TIMER_PRESCALER ==   32
                (0 << CS02) | (1 << CS01) | (1 << CS00) // Prescaler N=32
#elif ADC_TIMER_PRESCALER ==   64
                (1 << CS02) | (0 << CS01) | (0 << CS00) // Prescaler N=64
#elif ADC_TIMER_PRESCALER ==   128
                (1 << CS02) | (0 << CS01) | (1 << CS00) // Prescaler N=128
#elif ADC_TIMER_PRESCALER ==   256
                (1 << CS02) | (1 << CS01) | (0 << CS00) // Prescaler N=256
#elif ADC_TIMER_PRESCALER ==   1024
                (1 << CS02) | (1 << CS01) | (1 << CS00) // Prescaler N=1024
#else
                0
#endif
                | (0 << WGM02);      // mode 2

    OCR0A = ADC_TIMER_TOP;                       	// OCR2A = TOP = fcpu/(N*2*f) -1


    TIMSK0 |=   (1 << OCIE0A);                      // Ativa a interrupcao na igualdade de comparação do TC0 com OCR0A

}

/**
 * @brief MUX do ADC
 */
ISR(ADC_vect)
{
    #ifdef FAKE_ADC_ON
        adc.sum += FAKE_ADC;
    #else // FAKE_ADC_ON
        #ifdef ADC_8BITS
            adc.sum += ADCH;
        #else // ADC_8BITS
            adc.sum += ADC;
        #endif // ADC_8BITS
    #endif // FAKE_ADC_ON

    if(++adc.samples >= ADC_AVG_SIZE_10){
        adc0.ready = 1;
        adc0.value = adc.sum;
        adc.samples = adc.sum = 0;
    }
}

/**
 * @brief ISR necessária para auto-trigger do ADC. Caso contrário, dispara
 * BADISR_vect.
 */
EMPTY_INTERRUPT(TIMER0_COMPA_vect);
