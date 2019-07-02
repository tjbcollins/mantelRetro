FILES = mylib.h myConstants.h mantel.cc Mylib.cc
OBJECTS = Mylib.o mantel.o
CCFLAGS = 
LIBS = -lm 
CC = g++ -O2

# For debug:
# CCFLAGS =  -g
# LIBS = -lm -g
# CC = gcc -g

all : mantel

%.o:%.cc $(INCLUDES) 
	@echo compile $< to $@
	$(CC) -I./ $(CCFLAGS) -c -o $@ $<

mantel : $(OBJECTS)
	$(CC) $(CCFLAGS) $(OBJECTS) $(LIBS) -o mantel

Mylib.o:mylib.h
mantel.o:mylib.h 
mantel.o:myConstants.h 

clean :
	rm -f *.o *~

