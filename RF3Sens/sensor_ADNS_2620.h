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
    #define ConstMax
    #define ConstMin
    #define ConstPixMin
    #define ConstPixMax
  Для разных матриц подбирать практическим путем.
*/

#ifndef SENSOR_ADNS_2620_H
#define SENSOR_ADNS_2620_H

#undef use_nCS            // имеется ли у сенсора нога nCS

#define ARRAY_WIDTH       18
#define ARRAY_HEIGHT      18

//#define Motion            0x02
#define Delta_X           0x43
#define Delta_Y           0x42
#define squal             0x44
#define Shutter_Upper     0x49
#define Shutter_Lower     0x4a
#define Maximum_Pixel     0x45
#define Pixel_Sum         0x47
#define Minimum_Pixel     0x46
#define Pixel_Grab        0x48
#define Mask_pixel_value  0x3f
#define Pixel_data_valid  0x40
#define delay_tSWW        100
#define delay_tSRAD       100

#define ConstMax          59
#define ConstMin          3
#define ConstPixMin       50
#define ConstPixMax       70

#endif //#ifndef SENSOR_ADNS_2620_H