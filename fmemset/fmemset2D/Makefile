FC=ifort
CC=icc
FC=gfortran
CC=gcc

foo: mainf.o fmemset.o 
	$(FC) -pg mainf.o fmemset.o -o foo

mainf.o: mainf.f90
	$(FC) -c mainf.f90 -o mainf.o

fmemset.o: fmemset.c
	$(CC)  -c fmemset.c -o fmemset.o
run:
	./foo

clean:
	/bin/rm -f *.o ./foo
