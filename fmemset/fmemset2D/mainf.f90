program Albert
    integer  :: x,y,n,niter, iter,  asize
    parameter (n=1000, niter=365)
    real :: T1, T2, T3, T4, T9
    real :: a(n,n)


    write(*,*) "Size of a = ",size(a)
    asize = size(a) *4

    call CPU_TIME(T1)
    do 30 iter=1,niter
       !write(*,*) iter
       do 20 i=1,n
           do 10 j=1,n
               a(i,j) = 1.0
10         continue 
20     continue
30  continue
    call CPU_TIME(T2)
    write (*,*) a(1,1)


    do 60 iter=1,niter
       do 50 j=1,n
           do 40 i=1,n
               a(i,j) = 2.0
40         continue 
50     continue
60  continue
    call CPU_TIME(T3)
    write (*,*) a(1,1)



    do 80 iter=1,niter
       a = 3.
80  continue
    call CPU_TIME(T4)
    write (*,*) a(1,1)

    a=transpose(a)
    call CPU_TIME(T8)
    do 99 iter=1,niter
       call fmemset(a,asize)
99  continue
    call CPU_TIME(T9)
    write (*,*) a(1,1)

    write(*,*) " using do loop", T2-T1
    write(*,*) " using reverse", T3-T2
    write(*,*) " using a=0    ", T4-T3
    write(*,*) " using memset ", T9-T8
end program Albert


