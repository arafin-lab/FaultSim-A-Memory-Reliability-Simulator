CC=g++
INC=-I$(BOOSTINC)

CFLAGS=-c -Wall -std=c++0x -O2
LDFLAGS=-lboost_program_options

SOURCES := $(wildcard src/*.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=faultsim

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $(INC) $< -o $@

clean:
	rm -rf faultsim
	rm -rf src/*.o

