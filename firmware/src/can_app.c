#include "can_app.h"
#include <math.h>

/**
 * @brief Prints a can message via usart
 */
inline void can_app_print_msg(can_t *msg)
{
#ifdef USART_ON
    usart_send_string("ID: ");
    usart_send_uint16(msg->id);
    usart_send_string(". D: ");

    for(uint8_t i = 0; i < msg->length; i++){
      usart_send_uint16(msg->data[i]);
      usart_send_char(' ');
    }

    usart_send_string(". ERR: ");
    can_error_register_t err = can_read_error_register();
    usart_send_uint16(err.rx);
    usart_send_char(' ');
    usart_send_uint16(err.tx);
    usart_send_char('\n');
#endif
}

/**
* @brief Manages the canbus application protocol
*/
inline void can_app_task(void)
{
    check_can();

    if(can_app_send_state_clk_div++ >= CAN_APP_SEND_STATE_CLK_DIV){
#ifdef USART_ON
        VERBOSE_MSG_CAN_APP(usart_send_string("state msg was sent.\n"));
#endif
        can_app_send_state();
        can_app_send_state_clk_div = 0;
    }

    if(can_app_send_adc_clk_div++ >= CAN_APP_SEND_ADC_CLK_DIV){
#ifdef USART_ON
        VERBOSE_MSG_CAN_APP(usart_send_string("adc msg was sent.\n"));
#endif
        can_app_send_adc();
        can_app_send_adc_clk_div = 0;
    }

}

inline void can_app_send_state(void)
{
    can_t msg;
    msg.id                                  = CAN_FILTER_MSG_MSC19_STATE;
    msg.length                              = CAN_LENGTH_MSG_STATE;
    msg.flags.rtr = 0;

    msg.data[CAN_SIGNATURE_BYTE]            = CAN_SIGNATURE_SELF;
    msg.data[CAN_STATE_MSG_STATE_BYTE]      = (uint8_t) state_machine;
    msg.data[CAN_STATE_MSG_ERROR_BYTE]      = error_flags.all;

    can_send_message(&msg);
#ifdef VERBOSE_MSG_CAN_APP
    VERBOSE_MSG_CAN_APP(can_app_print_msg(&msg));
#endif
}

inline void can_app_send_adc(void)
{
    can_t msg;
    msg.id                                  = CAN_FILTER_MSG_MSC19_ADC;
    msg.length                              = CAN_LENGTH_MSG_MSC19_ADC;
    msg.flags.rtr = 0;

    uint16_t avg_adc0 =
        (measurements.adc0_avg_sum / measurements.adc0_avg_sum_count);

    uint16_t avg_adc0_converted;
    // float avg_adc0_converted_f;


    #if CAN_SIGNATURE_SELF == CAN_SIGNATURE_MSC19_1
    #define a -17641.6751612171f
    #define b 79157.5035175103f
    #define c -21.188134273f

    #elif CAN_SIGNATURE_SELF == CAN_SIGNATURE_MSC19_2
    #define a 263789.4883258151f
    #define b 75792.7668582234f
    #define c 0.5964624157f

    #elif CAN_SIGNATURE_SELF == CAN_SIGNATURE_MSC19_3
    avg_adc0_converted = avg_adc0;
    
    /* Valores da regressão polinomial para o sensor 4*/                                                         
    #elif CAN_SIGNATURE_SELF == CAN_SIGNATURE_MSC19_4
    #define a0 24798.776985043725f
    #define b0 -612.0228597161082f
    #define c0 5.0435655377663f
    #define a1 33.1566208598615f
    #define b1 -0.0433422905939f
    #define c1 0.0001235687722f
    if(avg_adc0 <= 34){                             
      avg_adc0_converted = 0;
    }else if(avg_adc0 < 42){
      avg_adc0_converted = (uint16_t) (a0 + b0*avg_adc0 + c0*powf(avg_adc0, 2));
      // avg_adc0_converted_f = b1 * avg_adc0;
      // avg_adc0_converted += (uint16_t) (a1 + (avg_adc0_converted_f * (1.f + (c1 / b1))));
    }else{
      avg_adc0_converted = (uint16_t) (a1 + b1*avg_adc0 + c1*powf(avg_adc0, 2));
    }
    
    /* Valores da regressão polinomial para o sensor 5*/
    #elif CAN_SIGNATURE_SELF == CAN_SIGNATURE_MSC19_5
    #define a0 -22049.50578228684f
    #define b0 650.8572477953808f
    #define c0 -6.3325473332169f
    #define a1 25.6822785042459f
    #define b1 -0.0059190761766f
    #define c1 -6.240086e-07f
    if(avg_adc0 <= 32){
      avg_adc0_converted = 0;
    }else if(avg_adc0 < 37){
      avg_adc0_converted = (uint16_t) (a0 + b0*avg_adc0 + c0*powf(avg_adc0, 2));
      // avg_adc0_converted_f = b1 * avg_adc0;
      // avg_adc0_converted += (uint16_t) (a1 + (avg_adc0_converted_f * (1.f + (c1 / b1))));
    }else{
      avg_adc0_converted = (uint16_t) (a1 + b1*avg_adc0 + c1*powf(avg_adc0, 2));
    }
    #endif

    msg.data[CAN_SIGNATURE_BYTE]            = CAN_SIGNATURE_SELF;
    msg.data[CAN_MSG_MSC19_ADC_AVG_BYTE_L]  = LOW(avg_adc0_converted);
    msg.data[CAN_MSG_MSC19_ADC_AVG_BYTE_H]  = HIGH(avg_adc0_converted);
    msg.data[CAN_MSG_MSC19_ADC_MIN_BYTE_L]  = LOW(measurements.adc0_min);
    msg.data[CAN_MSG_MSC19_ADC_MIN_BYTE_H]  = HIGH(measurements.adc0_min);
    msg.data[CAN_MSG_MSC19_ADC_MAX_BYTE_L]  = LOW(measurements.adc0_max);
    msg.data[CAN_MSG_MSC19_ADC_MAX_BYTE_H]  = HIGH(measurements.adc0_max);

    can_send_message(&msg);
#ifdef VERBOSE_MSG_CAN_APP
    VERBOSE_MSG_CAN_APP(can_app_print_msg(&msg));
#endif

    reset_measurements();
}

/**
 * @brief extracts the specific MIC17 STATE message
 * @param *msg pointer to the message to be extracted
 */
inline void can_app_extractor_mic17_state(can_t *msg)
{
    // TODO:
    //  - se tiver em erro, desligar acionamento
    if(msg->data[CAN_SIGNATURE_BYTE] == CAN_SIGNATURE_MIC17){
        // zerar contador
        if(msg->data[CAN_STATE_MSG_ERROR_BYTE]){
            //ERROR!!!
        }
        /*if(contador == maximo)*/{
            //ERROR!!!
        }
    }
}

/**
 * @brief redirects a specific message extractor to a given message
 * @param *msg pointer to the message to be extracted
 */
inline void can_app_msg_extractors_switch(can_t *msg)
{
    if(msg->data[CAN_SIGNATURE_BYTE] == CAN_SIGNATURE_MIC17){
        switch(msg->id){
            case CAN_FILTER_MSG_MIC17_STATE:
#ifdef USART_ON
                VERBOSE_MSG_CAN_APP(usart_send_string("got a state msg: "));
#endif
                VERBOSE_MSG_CAN_APP(can_app_print_msg(msg));
                can_app_extractor_mic17_state(msg);
                break;
            default:
#ifdef USART_ON
                VERBOSE_MSG_CAN_APP(usart_send_string("got a unknown msg: "));
#endif
                VERBOSE_MSG_CAN_APP(can_app_print_msg(msg));
                break;
        }
    }
}

/**
 * @brief Manages to receive and extract specific messages from canbus
 */
inline void check_can(void)
{
    // If no messages is received from mic17 for
    // CAN_APP_CHECKS_WITHOUT_MIC17_MSG cycles, than it go to a specific error state.
    //VERBOSE_MSG_CAN_APP(usart_send_string("checks: "));
    //VERBOSE_MSG_CAN_APP(usart_send_uint16(can_app_checks_without_mic17_msg));
#ifdef CAN_DEPENDENT
    if(can_app_checks_without_mic17_msg++ >= CAN_APP_CHECKS_WITHOUT_MIC17_MSG){
#ifdef USART_ON
        VERBOSE_MSG_CAN_APP(usart_send_string("Error: too many cycles withtou message.\n"));
#endif
        can_app_checks_without_mic17_msg = 0;
        error_flags.no_canbus = 1;
        set_state_error();
    }
#endif

    if(can_check_message()){
        can_t msg;
        if(can_get_message(&msg)){
            can_app_msg_extractors_switch(&msg);
        }
    }
}
