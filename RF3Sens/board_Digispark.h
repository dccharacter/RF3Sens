//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* board_Digispark.h */

//###########################################################################################
//  FAST PWM:
//###########################################################################################
/*

~/Documents/Arduino/hardware/digistamp/1.6.5/cores/tiny/core_build_options.h
#define FAVOR_PHASE_CORRECT_PWM                   0

~/Documents/Arduino/hardware/digistamp/1.6.5/cores/tiny/wiring.c
#define MS_TIMER_TICK_EVERY_X_CYCLES  1

~/Documents/Arduino/hardware/digistamp/1.6.5/cores/tiny/core_timers.h
в ветке #if defined( __AVR_ATtinyX5__ )
закомментировать
//#define TIMER0_SUPPORTS_PHASE_CORRECT_PWM  (1)
*/
//###########################################################################################

#define __AVR_ATtiny85__

//PB0(MOSI) 5 pin
#if defined(laser_power_via_mcu)
  #define LASER_VCC_PIN   0
  #define LASER_VCC_DDR   DDRB
  #define LASER_VCC_PORT  PORTB
#endif //laser_power_via_mcu

//PB1(MISO)  6pin
#define LED_PIN     1
#define LED_DDR     DDRB
#define LED_PORT    PORTB

//PB2(SCK/ADC1) 7pin
#define NCLOCK_PIN    2
#define NCLOCK_DDR    DDRB
#define NCLOCK_PORT   PORTB

#if defined(use_NCS)
  //PB3(ADC3) 1pin
  #define NCS_PIN       3
  #define NCS_DDR       DDRB
  #define NCS_PORT      PORTB
#endif

//PB4(usb Digispark) 3 pin
#define SDIO_PIN      4
#define SDIO_DDR      DDRB
#define SDIO_PORT     PORTB
#define SDIO_IN  PINB

//PB5(NRES) TRIGGER_PIN
#define TRIG_PIN      5
#define TRIG_DDR      DDRB
#define TRIG_IN  PINB
