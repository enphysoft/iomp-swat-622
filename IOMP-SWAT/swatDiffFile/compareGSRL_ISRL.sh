#!/bin/bash
#  
#	This bash script is to make sure serial source files of SWAT revision 622
#	are identical for gfortran and ifort, used in swat622-gsrl and swat622-isrl
#	directories, respectively.
#		- Albert S. Kim at U. of Hawaii at Manoa, Fri Jan  9 09:28:59 HST 2015
#

export gdir=../swat622-gsrl/src
export idir=../swat622-isrl/src

for f in `ls $gdir/*.f  | cut -c 21- ` 
do
	echo "diff  $gdir/$f $idir/$f"
	diff  $gdir/$f $idir/$f
done

for f90 in `ls $gdir/*.f90  | cut -c 21- ` 
do
	echo "diff  $gdir/$f90 $idir/$f90"
	diff  $gdir/$f90 $idir/$f90
done

echo 
echo "  If you see only diff command lines, there is no error. "
echo "  This is because if two files are identical, 'diff' command gives no output."
echo 
