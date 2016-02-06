//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* board_ArduinoNano.h */

#if defined(use_nCS)
  //pin_nCS  PB2 SS D10
  #define nCS_PIN        2
  #define nCS_DDR        DDRB
  #define nCS_PORT       PORTB
#endif 

//pin_led
//PB5 D13
#define led_PIN         5
#define led_DDR         DDRB
#define led_PORT        PORTB

//pin_nClock (SCK)
//PB4 D12
#define nClock_PIN      4
#define nClock_DDR      DDRB
#define nClock_PORT     PORTB

//MOSI
//PB3  D11
#define SDIO_PIN        3
#define SDIO_DDR        DDRB
#define SDIO_PORT       PORTB
#define SDIO_IN    PINB

//PD4 TRIGGER_PIN
#define TRIG_PIN        4
#define TRIG_DDR        DDRD
#define TRIG_IN    PIND