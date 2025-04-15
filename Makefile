CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -std=c99

wordCount.exe: wordCount.o myLinkedList.o
	$(CC) -o wordCount.exe wordCount.o myLinkedList.o $(CFLAGS)

wordCount.o: wordCount.c myLinkedList.h
	$(CC) -c wordCount.c $(CFLAGS)

myLinkedList.o: myLinkedList.c myLinkedList.h
	$(CC) -c myLinkedList.c $(CFLAGS)
