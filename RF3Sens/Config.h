//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* Config.h */
//###########################################################################################
//        Ручные настройки
//###########################################################################################
/*
При отсутствии флага DEBUG_TYPE, программа быстро обрабатывает соотв. регистр и выдает данные на led (штатная работа принтера).
При установленном флаге DEBUG_TYPE, по serial port передаются данные:
DEBUG_TYPE = 1  Передача картинки для фокусировки обьектива, колич. байт = ARRAY_WIDTH * ARRAY_HEIGHT
DEBUG_TYPE = 2  Для теста точности позиционирования (идея dccharacter-а). 
                Поиск порога как в штатном режиме (важна скорость), как только сработает порог - выдача картинки в serial port
DEBUG_TYPE = 3  Передача в текстовом виде на терминал данных: Max_Pix, Min_Pix, Pix_Sum, Shutter
DEBUG_TYPE = 4  Как 3-й режим, но по разрешению сигнала pin_TRIG (лог точно ограничен сигналом z_probe)
DEBUG_TYPE = 5  Данные перемещения мышки.
DEBUG_TYPE = 6 Тестирование режима двойного лазера
*/
#define DEBUG_TYPE 1 
#define NUM_SAMPLES_PER_MEASURE 5 //количество данных для 4-го режима

/*
Актуально только если есть флаг DEBUG_TYPE
Если определено то применяется программный Serial порт (только одна нога для передачи данных)
Для платы Digispark это единственный вариант и автоматически включается на 1 ногу
Если не определено, для дебага используется Hardware Serial
*/
//#define SOFTWARE_SERIAL 1 // одновременно и признак софтового serial и номер ноги для передачи данных (TX PIN)
#define SERIAL_SPEED 230400

/*
Тип сенсора, выбрать один нужный
*/
//#define SENS_TYPE_ADNS_5020
//#define SENS_TYPE_ADNS_2610
#define SENS_TYPE_ADNS_2620

/*
Используем ли питание с контроллера
*/
//#define laser_power_via_mcu // режим питания лазера с ног микроконтроллера (подаем питание на нужные ноги)
//#define sens_power_via_mcu // режим питания сенсора с ног микроконтроллера (подаем питание на нужные ноги)

/*
Тип контроллера, выбрать один нужный
*/
//#define DIGI_SPARK
//#define ARDUINO_NANO // базовая распайка arduino nano
//#define ARDUINO_NANO_wPOWER  // распайка сенсора на arduino nano для питания с ног микроконтроллера
#define ARDUINO_NANO_DOUBLE_LASER

/*
Алгоритм детектирования, выбрать один нужный
*/
//#define Algo_MaxPix         // простейший режим - срабатывание когда в поле зрения начинает появляться краешек пятна лазера.
                            // самый стабильный, но дистанция срабатывания разная при разном цвете поверхности
//#define Algo_MaxSqualMA   // режим обнаружения максимума Squal, т.к. параметр не стабилен введено сглаживание и анализ через среднескользящие
                            // экспериментальный

//###########################################################################################
//        Конец ручных настроек
//###########################################################################################


#if (defined(DIGI_SPARK) && !defined(SOFTWARE_SERIAL)) 
  #error "This board can be used only with SOFTWARE_SERIAL"
#endif

#if DEBUG_TYPE == 5
  #if defined(SENS_TYPE_ADNS_2610) || defined(SENS_TYPE_ADNS_2620)
    #error "This sensor doesn't have a motion register; DEBUG_TYPE 5 is unavailable"
  #endif
#endif


//###########################################################################################
//        Подключение библиотек 
//###########################################################################################
#if defined(SENS_TYPE_ADNS_5020)
  #include "sens/ADNS_5020.h"
#endif
#if defined(SENS_TYPE_ADNS_2610)
  #include "sens/ADNS_2610.h"
#endif
#if defined(SENS_TYPE_ADNS_2620)
  #include "sens/ADNS_2620.h"
#endif

#if defined(DIGI_SPARK)
#include "boards/Digispark.h"
#endif
#if defined(ARDUINO_NANO)
#include "boards/ArduinoNano.h"
#endif
#if defined(ARDUINON_NANO_wPOWER)
#include "boards/ArduinoNano.h"
#endif
#if defined(ARDUINO_NANO_DOUBLE_LASER)
#include "board_ArduinoNano_doubleLaser.h"
#endif

#if defined(DEBUG_TYPE) && defined(SOFTWARE_SERIAL)
  #include <SendOnlySoftwareSerial.h>
  SendOnlySoftwareSerial MyDbgSerial(SOFTWARE_SERIAL, false); //true allows to connect to a regular RS232 without RS232 line driver
  #define SERIAL_OUT MyDbgSerial
#else
  #define SERIAL_OUT Serial
#endif

//###########################################################################################
//        Определения
// за пример красивого определения спасибо Денису Константинову aka linvinus  roboforum.ru
//###########################################################################################
#define GET_PIN(x) x ## _PIN
#define GET_DDR(x) x ## _DDR
#define GET_PORT(x) x ## _PORT
#define GET_IN(x) x ## _IN
  
#define PIN_OUTPUT(PIN)   GET_DDR(PIN) |= (1<<GET_PIN(PIN))
#define PIN_INPUT(PIN)   GET_DDR(PIN) &=~(1<<GET_PIN(PIN))
#define PIN_LOW(PIN)   GET_PORT(PIN) &=~(1<<GET_PIN(PIN))
#define PIN_HIGH(PIN)   GET_PORT(PIN) |= (1<<GET_PIN(PIN))
#define PIN_TOGGLE(PIN)   GET_PORT(PIN) ^= (1<<GET_PIN(PIN))
#define PIN_READ(PIN)   GET_IN(PIN) & (1<<GET_PIN(PIN))
#define NUM_PIXS (ARRAY_WIDTH * ARRAY_HEIGHT)
