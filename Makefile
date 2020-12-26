CC=g++
CFLAGS=-I. --std=c++98 -Wall

.PHONY: boot
boot: clean
	$(CC) $(CFLAGS) wisp.cpp -o wisp
	echo "1.lisp" | ./wisp -f 1.lisp
	g++ out.cpp -o boot-1

	echo "2.lisp" | ./boot-1
	g++ out.cpp -o boot-2

	./boot-2 "3.lisp"
	g++ out.cpp -o boot-3

	./boot-3 "4.lisp"
	g++ out.cpp -o boot-4

	./boot-4 "4.lisp"

	mv out wispc
	make clean

.PHONY: clean
clean:
	-rm boot-* out.cpp