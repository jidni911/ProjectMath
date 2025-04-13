          program piecewise
          real x,fx
          print*,"     x    "
          if(x.lt.2)fx=0
            if(x.eq.2)fx=3.0*x**2-2.0*x+4.0
              if(x.gt.2)fx=3.0*x**2+2.0*x-4.0
                 write(*,*)"     x         fx "
                 write(*,*)x,fx
                 end program
                