      implicit none 
      double precision :: f, h, pi, x, a, sumtot 
      integer :: i, n 
      real :: Tstr, Tend
      include "number.f"


      h = 1.0 d0 / dble(n)
      sumtot = 0.0 d0
      call CPU_TIME(Tstr) 
      do i = 1 , n
      x = h * ( DBLE ( i ) -0.5 d0 )
      sumtot = sumtot + f ( x )
      end do
      call CPU_TIME(Tend) 
      pi = h * sumtot
      include "show.f"
      stop
      end

      double precision function f(a)
      double precision :: a
      f  = 4.d0 / (1.d0 + a*a)
      return
      end 


