//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* boards/ArduinoNano_wPower.h */

#if defined(use_NCS)
  //pin_NCS  PB2 SS D10
  #define NCS_PIN        2
  #define NCS_DDR        DDRB
  #define NCS_PORT       PORTB
#endif 

//pin_led
//PC5 A5
#define LED_PIN         5
#define LED_DDR         DDRC
#define LED_PORT        PORTC

//pin_nClock (SCK)
//PB2 D10
#define NCLOCK_PIN      2
#define NCLOCK_DDR      DDRB
#define NCLOCK_PORT     PORTB

//MOSI
//PB5  D13
#define SDIO_PIN        5
#define SDIO_DDR        DDRB
#define SDIO_PORT       PORTB
#define SDIO_IN    PINB

//PD5 D5 TRIGGER_PIN
#define TRIG_PIN         5
#define TRIG_DDR         DDRD
#define TRIG_IN     PORTD

#if defined(sens_power_via_mcu)
  // Sensor power GND
  //PB4 D12
  #define SENS_GND_PIN   4
  #define SENS_GND_DDR   DDRB
  #define SENS_GND_PORT  PORTB
  // Sensor power vcc
  //PB3 D11
  #define SENS_VCC_PIN   3
  #define SENS_VCC_DDR   DDRB
  #define SENS_VCC_PORT  PORTB
#endif //sens_power_via_mcu

#if defined(laser_power_via_mcu)
  // laser power GND
  //PB4 D12
  //#define LASER_GND_PIN   4
  //#define LASER_GND_DDR   DDRB
  //#define LASER_GND_PORT  PORTB
  // laser power vcc
  //PD2 D2
  #define LASER_VCC_PIN   2
  #define LASER_VCC_DDR   DDRD
  #define LASER_VCC_PORT  PORTD
#endif //laser_power_via_mcu