//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* boards/ArduinoNano.h */

#if defined(use_NCS)
  //pin_NCS  PB2 SS D10
  #define NCS_PIN       2
  #define NCS_DDR       DDRB
  #define NCS_PORT      PORTB
#endif 

//pin_led
//PB5 D13
#define LED_PIN         5
#define LED_DDR         DDRB
#define LED_PORT        PORTB

//SCK
//PB4 D12
#define NCLOCK_PIN      4
#define NCLOCK_DDR      DDRB
#define NCLOCK_PORT     PORTB

//MOSI
//PB3  D11
#define SDIO_PIN        3
#define SDIO_DDR        DDRB
#define SDIO_PORT       PORTB
#define SDIO_IN         PINB

//PD4 TRIGGER_PIN
#define TRIG_PIN        4
#define TRIG_DDR        DDRD
#define TRIG_IN         PIND