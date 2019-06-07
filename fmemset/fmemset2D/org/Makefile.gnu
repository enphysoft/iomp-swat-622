foo: mainf.o myfunc.o
	gfortran mainf.o myfunc.o -o foo

mainf.o: mainf.f90
	gfortran -c mainf.f90 -o mainf.o

myfunc.o: myfunc.c
	gcc -c myfunc.c -o myfunc.o

clean:
	/bin/rm -f *.o ./foo
