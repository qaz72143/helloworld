# Cross-Compiler
CC ?= gcc

TARGET = helloworld

# Rule
all: $(TARGET)

$(TARGET): helloworld.c
  $(CC) $(CFLAGS) $(LDFLAGS) helloworld.c -o $(TARGET)

clean:
	rm -f $(TARGET)
