CC=gcc
CFLAGS=-std=gnu11 -O3 -Wall -Wpedantic -march=native -m64
LDFLAGS=
LIBS=-lm
TARGET=build.exe
SOURCES=$(wildcard src/*.c)
OBJECTS=$(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(LINK.c) $^ -o $@ $(LIBS)

run:
	./$(TARGET)

clean:
	rm -f $(TARGET) $(OBJECTS)
