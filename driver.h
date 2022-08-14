#include "car.h"

typedef struct Driver
{
    Car car;
    char name[11];
} Driver;

float refuel(Car* car);
