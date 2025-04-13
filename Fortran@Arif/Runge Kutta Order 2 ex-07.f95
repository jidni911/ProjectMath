     real::k1,k2
     f(x,y)=x-y
     itr=0
     n=20
     x0=0.0
     y0=1.0
     x1=0.2
     h=(x1-x0)/float(n)
50   k1=h*f(x0,y0)
     k2=h*f(x0+h,y0+k1)
     x1=x0+h
     y1=y0+(k1+k2)/2.0
     write(6,20)x1,y1
20   format(4x,f10.3,4x,f10.3)
     itr=itr+1
     if(itr.lt.n)then
     x0=x1
     y0=y1
     goto 50
     endif
     stop
     end