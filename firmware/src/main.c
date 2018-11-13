// coding: utf-8

#include "main.h"

void init(void)
{
    #ifdef WATCHDOG_ON
        wdt_init();
    #endif 
 
    #ifdef USART_ON
        usart_init(MYUBRR,1,1);                         // inicializa a usart
        VERBOSE_MSG_INIT(usart_send_string("\n\n\nUSART... OK!\n"));
    #endif

    #ifdef WATCHDOG_ON
        VERBOSE_MSG_INIT(usart_send_string("WATCHDOG..."));
        wdt_reset();
        VERBOSE_MSG_INIT(usart_send_string(" OK!\n"));
    #else
        VERBOSE_MSG_INIT(usart_send_string("WATCHDOG... OFF!\n"));
    #endif

    #ifdef PWM_ON
        VERBOSE_MSG_INIT(usart_send_string("PWM..."));
        pwm_init();
        VERBOSE_MSG_INIT(usart_send_string(" OK!\n"));
    #else
        VERBOSE_MSG_INIT(usart_send_string("PWM... OFF!\n"));
    #endif

    #ifdef WATCHDOG_ON
        wdt_reset();
    #endif

    #ifdef CAN_ON
        VERBOSE_MSG_INIT(usart_send_string("CAN (500kbps)..."));
        can_init(BITRATE_500_KBPS);
        VERBOSE_MSG_INIT(usart_send_string(" OK!\n"));
        VERBOSE_MSG_INIT(usart_send_string("CAN filters..."));
        //can_static_filter(can_filter);
        VERBOSE_MSG_INIT(usart_send_string(" OK!\n"));
    #else
        VERBOSE_MSG_INIT(usart_send_string("CAN... OFF!\n"));
    #endif

    #ifdef WATCHDOG_ON
        wdt_reset();
    #endif

    #ifdef ADC_ON
        VERBOSE_MSG_INIT(usart_send_string("ADC..."));
        adc_init();
        VERBOSE_MSG_INIT(usart_send_string(" OK!\n"));
    #else
        VERBOSE_MSG_INIT(usart_send_string("ADC... OFF!\n"));
    #endif

    #ifdef WATCHDOG_ON
        wdt_reset();
    #endif

    #ifdef SLEEP_ON 
        VERBOSE_MSG_INIT(usart_send_string("SLEEP..."));
        sleep_init();
        VERBOSE_MSG_INIT(usart_send_string(" OK!\n"));
    #else
        VERBOSE_MSG_INIT(usart_send_string("SLEEP... OFF!\n"));
    #endif

    #ifdef WATCHDOG_ON
        wdt_reset();
    #endif

 	#ifdef MACHINE_ON
        VERBOSE_MSG_INIT(usart_send_string("MACHINE..."));
		machine_init();
        VERBOSE_MSG_INIT(usart_send_string(" OK!\n"));
    #else
        VERBOSE_MSG_INIT(usart_send_string("MACHINE... OFF!\n"));
	#endif

    #ifdef WATCHDOG_ON
        wdt_reset();
    #endif
	
    #ifdef LED_ON
        set_bit(LED_DDR, LED);                      // LED como saída
        VERBOSE_MSG_INIT(usart_send_string("LED... OK!\n"));
    #else
        VERBOSE_MSG_INIT(usart_send_string("LED... OFF!\n"));
    #endif

    #ifdef WATCHDOG_ON
        wdt_reset();
    #endif

	
    // ------------------------------------------------------------------------
#ifdef ENABLE_HARDWARE_OVERVOLTAGE_INTERRUPT
	clr_bit(BatOverVoltageInterrupt_DDR,BatOverVoltageInterrupt);	// int0 as input
	clr_bit(BatOverVoltageInterrupt_PORT,BatOverVoltageInterrupt);	// int0 without pullpup
    EICRA |= (1<<ISC01) | (1<<ISC00);           // rising edge for int0
    EIMSK |= (1<<INT0);                         // enables int0 interrupt
    EIFR |= (1<<INTF0);                         // clears int0 interrupt
#endif // ENABLE_HARDWARE_OVERVOLTAGE_INTERRUPT 
 
#ifdef ENABLE_HARDWARE_ENABLE_SWITCH_INTERRUPT   
	clr_bit(Enable_DDR,Enable);					// int1 as input
	set_bit(Enable_PORT,Enable);				// int1 with pullup
    EICRA |= (0<<ISC11) | (0<<ISC10);           // low level for int1
    //EIMSK |= (1<<INT1);                         // enables int1 interrupt
    EIFR |= (1<<INTF1);                         // clears int1 interrupt
#endif // ENABLE_HARDWARE_ENABLE_SWITCH_INTERRUPT

#ifdef MACHINE_ON
    print_configurations();
#endif // MACHINE_ON

    sei();
}

int main(void)
{

    init();
   
	for(;;){
		#ifdef WATCHDOG_ON
            wdt_reset();
		#endif

        #ifdef MACHINE_ON
            machine_run();
        #else
            #ifdef PWM_ON
                #ifdef PWM_TEST
                    #ifdef CONVERTER_TEST_WITH_FIXED_DUTYCYCLE
                        set_pwm_duty_cycle(CONVERTER_TEST_WITH_FIXED_DUTYCYCLE_DT_VALUE);
                    #else
                        static uint8_t i = 0;
                        set_pwm_duty_cycle(i++);
                        if(i>PWM_D_MAX) i = PWM_D_MIN;
                    #endif
                #else
                    #ifdef PEO_TEST
                        read_and_check_adcs();
                        pwm_compute();
                    #endif
                #endif
            #endif
        #endif

		#ifdef SLEEP_ON
            sleep_mode();
		#endif
	}
}


/**
 * @brief se em debug, fica chaveando os pinos de debugs até o reset do watchdog
 */
ISR(BADISR_vect)
{
    for(;;){
        pwm_reset();
        VERBOSE_MSG_ERROR(usart_send_string("\nFATAL ERROR: BAD ISR."));
        #ifdef WATCHDOG_ON
            VERBOSE_MSG_ERROR(usart_send_string("WAITING FOR WATCHDOG TO RESET...\n"));
        #endif
        #ifdef DEBUG_ON
            DEBUG0;
            DEBUG1;
            _delay_ms(100);
        #endif
    }
}
