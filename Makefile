TARGET = helloworld
CC ?= gcc
BINDIR ?= /usr/bin
DESTDIR ?=

all: $(TARGET)

$(TARGET): helloworld.c
	$(CC) $(CFLAGS) $(LDFLAGS) helloworld.c -o $(TARGET)

install:
	install -d $(DESTDIR)$(BINDIR)
	install -m 0755 $(TARGET) $(DESTDIR)$(BINDIR)

clean:
	rm -f $(TARGET)
