CC = gcc
SRCS = main.c
CFLAGS = -Wall -g
TARGET = main

$(TARGET): $(SRCS:.c=.o)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) $(SRCS:.c=.o)
