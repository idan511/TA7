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
all: driver.o car.o
	gcc driver.o car.o -Wvla -Wall -o myprog

driver.o: driver.c driver.h
	gcc driver.c driver.h -c -o driver.o

car.o: car.c car.h
	gcc car.c car.h -c -o car.o

clean:
	rm *.o *.exe