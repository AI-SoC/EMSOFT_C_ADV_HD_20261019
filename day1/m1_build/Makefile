help:
	@echo "try enter - make all"

hyundai.o: hyundai.c
# compile only (c -> asm)
	gcc -S hyundai.c
# assembling only (asm -> obj)
	as     hyundai.s -o hyundai.o

main.o: main.c
# preprocessing
	cpp main.c > main.i
# compile only (c -> asm)
	gcc -S main.i -o main.s
# assembling only (asm -> obj)
	as     main.s -o main.o

main: main.o hyundai.o
# linking (multi objs -> executable )
	gcc main.o hyundai.o  -o main

all: main
	./main

dump: 
	objdump -d -S main > main_dis.S

rebuild:
	make clean
	make all
	
clean:
	rm *.o *.s main
