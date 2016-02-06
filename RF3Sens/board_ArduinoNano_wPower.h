//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* board_ArduinoNano_wPower.h */

#if defined(use_nCS)
  //pin_nCS  PB2 SS D10
  #define nCS_PIN        2
  #define nCS_DDR        DDRB
  #define nCS_PORT       PORTB
#endif 

//pin_led
//PC5 A5
#define led_PIN         5
#define led_DDR         DDRC
#define led_PORT        PORTC

//pin_nClock (SCK)
//PB2 D10
#define nClock_PIN      2
#define nClock_DDR      DDRB
#define nClock_PORT     PORTB

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
  #define sensor_gnd_PIN   4
  #define sensor_gnd_DDR   DDRB
  #define sensor_gnd_PORT  PORTB
  // Sensor power vcc
  //PB3 D11
  #define sensor_vcc_PIN   3
  #define sensor_vcc_DDR   DDRB
  #define sensor_vcc_PORT  PORTB
#endif //sens_power_via_mcu

#if defined(laser_power_via_mcu)
  // laser power GND
  //PB4 D12
  //#define laser_gnd_PIN   4
  //#define laser_gnd_DDR   DDRB
  //#define laser_gnd_PORT  PORTB
  // laser power vcc
  //PD2 D2
  #define laser_vcc_PIN   2
  #define laser_vcc_DDR   DDRD
  #define laser_vcc_PORT  PORTD
#endif //laser_power_via_mcu