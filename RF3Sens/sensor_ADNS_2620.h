//###########################################################################################
// RF3Sens (RoboForum triangulation range sensor)
// http://roboforum.ru/forum107/topic15929.html (official language for this forum - russian)
// MIT License
// 2015-2016
// Дмитрий Лилик (aka Dmitry__ @ RoboForum.ru)
// Андрей Пожогин (aka dccharacter  @ RoboForum.ru)
// Сергей Тараненко (aka setar @ RoboForum.ru)
//###########################################################################################

/* sensor_ADNS_2620.h

  Для работы алгоритма определения порога датчика важны:
    #define ADNS_CONST_MAX
    #define ADNS_CONST_MIN
    #define ADNS_CONST_PIX_MIN
    #define ADNS_CONST_PIX_MAX
  Для разных матриц подбирать практическим путем.
*/

#ifndef SENSOR_ADNS_2620_H
#define SENSOR_ADNS_2620_H

#undef use_NCS            // имеется ли у сенсора нога NCS

#define ARRAY_WIDTH       18
#define ARRAY_HEIGHT      18

#define ADNS_CONF     0x40
//#define ADNS_MOTION            0x42
#define ADNS_DELTA_X           0x43
#define ADNS_DELTA_Y           0x42
#define ADNS_SQUAL             0x44
#define ADNS_SHUTTER_UPPER     0x49
#define ADNS_SHUTTER_LOWER     0x4a
#define ADNS_MAX_PIX     0x45
#define ADNS_PIX_SUM         0x47
#define ADNS_MIN_PIX     0x46
#define ADNS_PIX_GRAB        0x48
#define ADNS_MASK_PIX  0x3f
#define ADNS_PIX_DATA_VALID  0x40
#define ADNS_DELAY_TSWW        100
#define ADNS_DELAY_TSRAD       100

#define ADNS_CONST_MAX          59
#define ADNS_CONST_MIN          3
#define ADNS_CONST_PIX_MIN       50
#define ADNS_CONST_PIX_MAX       70

#endif //#ifndef SENSOR_ADNS_2620_H