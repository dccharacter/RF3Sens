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
#define __AVR_ATtiny85__

#if defined(use_nCS)
  //PB0(MOSI) 5 pin
  #define pin_nCS_bit       0
  #define pin_nCS_DDR       DDRB
  #define pin_nCS_PORT      PORTB
#endif

//PB1(MISO)  6pin
#if defined(debug_type)
  #define TxPin           1
#else
  #define pin_led_bit     1
  #define pin_led_DDR     DDRB
  #define pin_led_PORT    PORTB
#endif

//PB2(SCK/ADC1) 7pin
#define pin_nClock_bit    2
#define pin_nClock_DDR    DDRB
#define pin_nClock_PORT   PORTB

//PB4(usb Digispark) 3 pin
#define pin_SDIO_bit      4
#define pin_SDIO_DDR      DDRB
#define pin_SDIO_PORT     PORTB
#define pin_SDIO_PORT_IN  PINB

//PB5(NRES) TRIGGER_PIN, 1 pin
#define pin_TRIG_bit      5
#define pin_TRIG_DDR      DDRB
#define pin_TRIG_PORT_IN  PINB
