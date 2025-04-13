      Real x,y,f
      print*,"x  y"
      Read(*,*)x,y
      write(*,*)"x    y    f(x,y)"
      write(*,*)x,y,f(x,y)
      end
      function f(x,y)
      real x,y,f
      if(x.gt.2.0) then
        f=x**2+y**2
       else
         f=0.0
       endif
       return
       end
