program Albert
    integer  :: x,y,n,niter, iter,  asize
    parameter (n=1000, niter=365*24)
    real :: T1, T2, T3, T4, T9
    real ::  b(n*n)

!===============================
    call CPU_TIME(T1)
    do iter=1,niter
       do i=1,n*n
             b(i) =  real(i**2)/real(n**2) 
       enddo
    enddo
    call CPU_TIME(T2)
    write(1,*) b
    write(*,*)iter, b(1)
    write(*,*) " using do loop", T2-T1 , iter, b(1), b(n**2)

!===================================
    call CPU_TIME(T2)
    do iter=1,niter
       do j=n*n,1,-1
       !do j=1,n*n
           b(j) =  real(j**2) /real(n**2)
       enddo
    enddo
    call CPU_TIME(T3)
    write(2,*) b
    write(*,*) " using backward", T3-T2, iter, b(1), b(n**2)

!===================================
    call CPU_TIME(T3)
    do iter=1,niter
       b = 3.0
    enddo
    call CPU_TIME(T4)
    write(3,*) b
    write (*,*)iter, b(1)
    write(*,*) " using a=0    ", T4-T3
!===================================

    call CPU_TIME(T8)
    do iter=1,niter
       call fmemset(b,n*n*4) 
    enddo
    call CPU_TIME(T9)
    write(4,*) b
    write (*,*) iter, b(1)
    write(*,*) " using memset ", T9-T8
!===================================
end program Albert


