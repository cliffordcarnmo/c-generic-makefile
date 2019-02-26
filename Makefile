CC=gcc
CFLAGS=-std=gnu11 -O3 -Wall -Wextra -Wpedantic -Wstrict-aliasing -march=native -m64
LDFLAGS=-lm
TARGET=build.exe
SOURCES=$(wildcard src/*.c)
OBJECTS=$(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(LINK.c) $^ -o $@

run:
	./$(TARGET)

clean:
	rm -f $(TARGET) $(OBJECTS)
