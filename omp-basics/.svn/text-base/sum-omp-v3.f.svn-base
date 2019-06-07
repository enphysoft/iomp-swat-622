      implicit none 
      double precision :: f, h, pi, x, a, sumtot 
      integer :: i, n 
      real :: Tstr, Tend
      include "number.f"

      h = 1.0 d0 / dble(n)
      call CPU_TIME(Tstr) 
           call calc_pi (h,n,pi)
      call CPU_TIME(Tend) 
      include "show.f"
      stop
      end
!============================================
      double precision function f(a)
      double precision :: a
      f  = 4.d0 / (1.d0 + a*a)
      return
      end 

!============================================
      subroutine calc_pi (h,n,pi)
      integer :: i, n
      double precision :: f, h, pi, x, sumtot
      sumtot = 0.0 d0

!$OMP PARALLEL PRIVATE (i,x)
!$OMP DO REDUCTION(+:sumtot)
         do i = 1 , n
         x = h * ( DBLE ( i ) -0.5 d0 )
         sumtot = sumtot + f ( x )
         end do
!$OMP END DO
!$OMP END PARALLEL 

      pi = h * sumtot
      end subroutine 
