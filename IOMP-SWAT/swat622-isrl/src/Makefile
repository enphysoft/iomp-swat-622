include ../Makefile.OBJ
include ../Makefile.CLN 
include ../Makefile.INC

%.o: %.f
	$(FC) $(F77OPT) -c $? 

%.o: %.f90
	$(FC) $(F90OPT) -c $? 

all: mod cmp lib exe 
mod: modparm.o allocate_parms.o
cmp: cmp77 cmp90
cmp77: $(OBJ77) cmpgt
cmpgt:
	$(FC) $(F90OPT) -c grow.f
	$(FC) $(F90OPT) -c tran.f
cmp90: $(OBJ90)

lib:
	@ar -r  $(libfile) $(OBJ77) $(OBJ90) grow.o tran.o
exe:
	@echo
	$(FC) $(F77OPT) $(PRFOPT)  main.f $(libfile) -o $(exefile)
	@echo
install:
	cp -f ./$(exefile) ../
	cp -f ./$(libfile) ../
clean:
	rm -rf $(CLN) *.o *.mod
	rm -f ../$(exefile)
	rm -f ../$(libfile) 
