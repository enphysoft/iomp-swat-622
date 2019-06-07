#!/bin/bash
#  
#	This bash script is to make sure serial source files of SWAT revision 622
#	for serial and openMP versions (compiled using Intel compilers) are identical
#	used in swat622-gsrl (not swat622-isrl) and swat622-iomp directories, respectively.
#		- Albert S. Kim at U. of Hawaii at Manoa, Fri Jan  9  HST 2015
#

export gdir=../swat622-gsrl/src
export idir=../swat622-isrl/src
export odir=../swat622-iomp/src

for f in `ls $idir/varinit.f  | cut -c 21- ` 
do
	echo "diff  $idir/$f $odir/$f"
	diff        $idir/$f $odir/$f
done

echo 
echo "  If you see only diff command lines, there is no error. "
echo "  This is because if two files are identical, 'diff' command gives no output."
echo "  Note: Only 'varinit.f' is compared so that you must see many lines scrolling up."
echo "  which are the main parts of OMP from SRL."  
echo  
