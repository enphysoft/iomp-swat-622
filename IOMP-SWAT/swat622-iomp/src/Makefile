include ../Makefile.INC
include ../Makefile.OBJ
include ../Makefile.CLN 

%.o: %.f
	$(FC) $(F77OPT) -c $? 

%.o: %.f90
	$(FC) $(F90OPT) -c $? 

all: fmemset mod cmp lib exe 
mod: modparm.o allocate_parms.o fmemset 
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
	$(FC) $(F77OPT) $(PRFOPT) -qopenmp  main.f $(libfile) fmemset.o  -o $(exefile)$(ver) 
	@echo "version =  " $(ver)
	@echo 
install:
	cp -f $(libfile) ../$(libfile) 
	cp -f $(exefile) ../$(exefile)
clean:
	rm -rf $(CLN) *.o *.mod
	rm -f ../$(exefile)
	rm -f ../$(libfile) 



fmemset:
	icc -c fmemset.c
