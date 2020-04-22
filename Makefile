#CC	= gcc 
CC = gcc 
LDFLAGS	=  
OBJFILES =  driver.o file1.o file2.o
TARGET	= makefileAssignment

all : $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

driver.o : driver.c headers.h
	$(CC) -c driver.c

file1.o : file1.c headers.h
	$(CC) -c file1.c

file2.o : file2.c headers.h
	$(CC) -c file2.c

clean:
	rm -fr makefileAssignment driver.o file1.o file2.o