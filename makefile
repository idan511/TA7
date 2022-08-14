#.PHONY: all, clean  #tells make that all and clean aren’t real targets
#
#OBJECTS = driver.o car.o
#CC = gcc
#CCFLAGS = -Wall -Wextra -Wvla
#
#all: $(OBJECTS) #same as putting in driver.o and car.o
#	$(CC) $^ -o output
#
#driver.o: driver.c driver.h
#	$(CC) $(CCFLAGS) -c $<  #same as gcc -Wall -Wextra -Wvla -c driver.c
#
#car.o: car.c car.h
#	$(CC) $(CCFLAGS) -c $<
#
#clean:
#	rm *.o *.exe
#	#rm removes a file, * is a wildcard, so we remove any file that ends with .o or .exe
#
.PHONY: all, clean, car.o
CC = gcc
CCFLAGS = -Wall -Wvla -Wextra

all: driver.o car.o
	$(CC) driver.o car.o $(CCFLAGS) -o myprog

driver.o: driver.c driver.h
	$(CC) driver.c driver.h $(CCFLAGS) -c

car.o: car.c car.h
	$(CC) car.c car.h $(CCFLAGS) -c

clean:
	rm *.o *.exe