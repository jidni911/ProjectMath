     f(x)=sqrt(2.0-alog(x))
     df(x)=-1.0/(2.0*x*sqrt(2.0-alog(x)))
     s=0.1e-04
     n=1
     write(*,44)
 44  format(//2x,'Enter the initial root : '/)
12   read*,x0
     if(abs(df(x0)).ge.1.0) goto 12
18   print*,n,x0
     x1=f(x0)
     if(abs(x0-x1).lt.s)goto 15
     n=n+1
     x0=x1
     goto 18
15   write(6,30)x1
30   format(//2x,'The root of given equation = ',f6.4)
     stop
     end
