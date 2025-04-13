      f(x)=cos(x)-x*exp(x)
      print*,"enter a,b and tol"
      read*,a,b,tol
      print*,"n      a      b"
      n=1
20    c=(a*f(b)-b*f(a))/(f(b)-f(a))
      if(f(c).eq.0.0)goto 40
      if(f(c)*f(a).lt.0.0) then
      b=c
      else
      a=c
      endif
      print 30,n,a,b
30    format(2x,i5,3x,2f10.3)
      if(abs(a-b).lt.tol) goto 40
      n=n+1
      goto 20
40    write(6,50)c
50    format(2x,"solution x+",f10.3)
      read*,a
      end
