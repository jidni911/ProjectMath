     real::k1,k2,k3,k4
     f(x,y)=x+y
     itr=0
     x0=0.0
     y0=1.0
     x1=1.0
     h=0.1
     n=(x1-x0)/h
     print*,"      x       f(x) "
50   k1=h*f(x0,y0)
     k2=h*f(x0+h/2.0,y0+k1/2.0)
     k3=h*f(x0+h/2.0,y0+k2/2.0)
     k4=h*f(x0+h,y0+k3)
     x1=x0+h
     y1=y0+(k1+2*k2+2*k3+k4)/6.0
     write(6,20)x1,y1
20   format(4x,f10.3,4x,f10.3)
     itr=itr+1
     if(itr.le.n)then
     x0=x1
     y0=y1
     goto 50
     endif
     stop
     end