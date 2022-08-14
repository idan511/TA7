#include "driver.h"
#include <stdio.h>

float refuel(Car* car)
{
    car->fuel = 100.0;
    printf("The car has been refueled\n");
    return car->fuel;
}

int main()
{
    Car car = new_car ("Mazda", "Black", 0.0);
    Driver driver = {car, "Dave"};
    refuel(&driver.car);
    ignite(&driver.car);
    drive(&driver.car, 75.5);
}