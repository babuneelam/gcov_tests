BUILDDIR=../bin
SHELL = /bin/sh
CC    = gcc
FLAGS        = -std=gnu99 -Iinclude
CFLAGS       = -fPIC -pedantic -march=native -ggdb3
DEBUGFLAGS   = -O0 -D _DEBUG
RELEASEFLAGS = -O2 -D NDEBUG -combine -fwhole-program

TARGET  = showmap
SOURCES = $(shell echo *.c)
OBJECTS = $(SOURCES:.c=.o)

all: dir $(BUILDDIR)/$(TARGET)

dir:
	mkdir -p $(BUILDDIR)

$(BUILDDIR)/$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) $(CFLAGS) -o $(BUILDDIR)/$(TARGET) $(OBJECTS)

clean:
	$(RM) *.o
	$(RM) $(BUILDDIR)/$(TARGET)
