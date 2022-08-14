typedef struct Car
{
    char model[11];
    char color[11];
    float fuel;
    int ignited;
} Car;

Car new_car(const char* model, const char* color, float fuel);
void ignite(Car* car);
float drive(Car* car, float kms);


