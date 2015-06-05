# build an executable
OBJS = Student.o Driver.o
CPPFLAGS = -Wall -std=c++11
CC = g++
PROG = studs

$(PROG): $(OBJS)
	$(CC)  -o $(PROG) $(OBJS)

Student.o: Student.cpp Student.h
	$(CC)  $(CPPFLAGS) -c Student.cpp

Driver.o: Driver.cpp
	$(CC)  $(CPPFLAGS) -c Driver.cpp

clean:
	$(RM) $(PROG) $(OBJS)
