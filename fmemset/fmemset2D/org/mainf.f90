program Albert
    integer  :: x,y
    real :: a(4,4)
    do 20 i=1,4
        do 10 j=1,4
            a(i,j) = 4
            write (*,*) a(i,j)
10      continue 
20  continue
    ! zeroing out 4*4 elements, each of 4 bytes
    !call fmemset(a,4*4*4)
    call myset(a)
    write (*,*) "UPDATED ARRAY:"
    do 40 i=1,4
        do 30 j=1,4
            write (*,*) a(i,j)
30      continue 
40  continue
    write(*,*) size(a)
end program Albert


subroutine myset (b)
   real :: b(4,4)
   call fmemset(b,4*4*4)
   return
end subroutine 
