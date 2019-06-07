FC=ifort
CC=icc

foo: mainf.o fmemset.o 
	$(FC) mainf.o fmemset.o -o foo

mainf.o: mainf.f90
	$(FC) -c mainf.f90 -o mainf.o

fmemset.o: fmemset.c
	$(CC)  -c fmemset.c -o fmemset.o
run:
	./foo

clean:
	/bin/rm -f *.o ./foo
