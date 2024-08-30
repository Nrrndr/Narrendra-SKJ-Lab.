all: mulnum
mulnum: mulnum.cpp
	g++ -o mulnum mulnum.cpp
dump: mulnum
	objdump -d mulnum.exe > mulnum.asm
clean:
	rm -f mulnum.exe mulnum.asm
run: mulnum
	./mulnum