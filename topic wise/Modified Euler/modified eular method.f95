          implicit none
          integer n
          parameter (n=10)
          real w(0:n),a,b
          write(*,*)'Enter boundary point a,b and initial value y0=w(0)'
          read(*,*)a,b,w(0)
          write(*,*)'eular method'
          call eular (a,b,w,n)
          write(*,*)'modified eular method'
          call meular (a,b,w,n)
          stop
          end
          !======= eular method===========
          subroutine eular(a,b,w,n)
          real w(0:n)
          h=(b-a)/n
          x=a
          write(*,22)x,w(i)
          do i=1,n
            w(i)=w(i-1)+h*f(x,w(i-1))
            x=a+i*h
            write(*,22)x,w(i)
   22         format(2x,f12.5,3x,f13.5)
              enddo
              return
              end
          !======Subroutine modified eular method=============
          subroutine meular(a,b,w,n)
          real w(0:n),tol
          tol=0.00001
          h=(b-a)/n
          x=a
          write(*,33)x,w(i)
          do i=1,n
            g=w(i-1)+h*f(x,w(i-1))
   10         w(i)=w(i-1)+(h/2)*(f(x,w(i-1))+f(x+h,g))
            if(abs(w(i)-g).gt.tol)then
              g=w(i)
              goto 10
              endif
              x=a+i*h
              write(*,33)x,w(i)
      33      format(3x,f5.3,2x,f10.3)
              enddo
              return
              end
                !======= given function=========
                function f(x,y)
                f=y-x*x+1
                return
                end
          