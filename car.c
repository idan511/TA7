#include <stdio.h>
#include "car.h"
#include <string.h>

Car new_car (const char* model, const char* color, float fuel)
{
    Car car;
    strcpy (car.model, model);
    strcpy (car.color, color);
    car.fuel = fuel;
    car.ignited = 0;
    return car;
}

void ignite (Car *car)
{
    printf ("Vroom Vroom\n");
    car->ignited = 1;
}

float drive (Car *car, float kms)
{
    if (kms <= car->fuel && car->ignited)
    {
        car->fuel -= kms;
        printf("Drove a total of %f kms, amount of fuel left is %f\n", kms, car->fuel);
    }
    return car->fuel;
}
