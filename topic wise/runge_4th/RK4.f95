!---------------------------------------------------------------------------------
!--------------------------------------------------------------------------------------
!Runge-Kutta method of order four to solve an IVP
!--------------------------------------------------------------------------------------
               PROGRAM RK4
               integer iter
               iter=0
               write(*,*)'Enter  x0,y0 and expected function value at x1:'
               read(*,*) x0,y0,x1
               write(*,*)'Enter the number of subintervals:'
               read(*,*) n
               h=(x1-x0)/real(n)
               write(*,30)
               30 format(8x,'x',5x,'f(x)')
               write(*,40)x0,y0
               40 format(1x,F10.4,F10.4)
               50 s1=f(x0,y0)
                  s2=f(x0+h/2.,y0+s1*h/2.)
                  s3=f(x0+h/2.,y0+s2*h/2.)
                  s4=f(x0+h,y0+s3*h)
                  y1=y0+(s1+2.*s2+2.*s3+s4)*h/6.0
                  x1=x0+h
               write(*,40)x1,y1
               iter = iter+1
               IF(iter.LT.n) THEN
               x0=x1
               y0=y1
               GOTO 50
               ENDIF
               write(*,60) x1,y1
               60 format(1x,'The value at','F10.4,','is:',F10.4)
               STOP
               END
               !==============Given Function===============
               function f(x,y)
               f=x-y**2
               return
               END





