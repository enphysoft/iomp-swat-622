IFC=ifort
GFC=gfortran

IFCOPT=-qopenmp
GFCOPT=-fopenmp

omp-v3:
	$(IFC) $(IFCOPT) sum-omp-v3.f -o ifort-sum-omp-v3.x
	$(GFC) $(GFCOPT) sum-omp-v3.f -o gfort-sum-omp-v3.x

run:
	date;  time ifort-sum-omp-v3.x;date;echo
	date;  time gfort-sum-omp-v3.x;date;echo   
omp-v2:
	$(IFC) $(IFCOPT) sum-omp-v2.f -o ifort-sum-omp-v2.x
	$(GFC) $(GFCOPT) sum-omp-v2.f -o gfort-sum-omp-v2.x
   
omp-v1:
	$(IFC) $(IFCOPT) sum-omp-v1.f -o ifort-sum-omp-v1.x
	$(GFC) $(GFCOPT) sum-omp-v1.f -o gfort-sum-omp-v1.x
   
srl-v2:
	$(IFC) sum-srl-v2.f -o ifort-sum-srl-v2.x
	$(GFC) sum-srl-v2.f -o gfort-sum-srl-v2.x

srl-v1:
	$(IFC) sum-srl-v1.f -o ifort-sum-srl-v1.x
	$(GFC) sum-srl-v1.f -o gfort-sum-srl-v1.x

all: omp-v3 omp-v2 omp-v1 srl-v2 srl-v1 
runall: irun grun

irun:
	date;  time ifort-sum-srl-v1.x ;date;echo 
	date;  time ifort-sum-srl-v2.x ;date;echo 
	date;  time ifort-sum-omp-v1.x ;date;echo 
	date;  time ifort-sum-omp-v2.x ;date;echo 
	date;  time ifort-sum-omp-v3.x ;date;echo 

grun:
	date; time gfort-sum-srl-v1.x  ;date;echo  
	date; time gfort-sum-srl-v2.x  ;date;echo  
	date; time gfort-sum-omp-v1.x  ;date;echo  
	date; time gfort-sum-omp-v2.x  ;date;echo  
	date; time gfort-sum-omp-v3.x  ;date;echo  

clean:
	rm -rf *.o *.x 
