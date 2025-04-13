	f(x)=cos(2*x)-x*Exp(x)
    df(x)=-2*sin(2*x)-x*Exp(x)-exp(x)
    write(*,10)
10  format(1x,34("_"))
    write(*,11)
11  format(1x,"|  Iteration  |   Approximation  |")
    write(*,12)
12  format(1x,'|',13('_'),'|',18('_'),"|")
    i=1
    x0=0.0
20  x1=x0-f(x0)/df(x0)
    write(*,21)i,x1
21  format(1x,"|",5x,i2,6x,"|",5x,f9.5,4x,'|')
    if(abs(x1-x0).gt.0.00001)then
      x0=x1
      i=i+1
      goto 20
    endif
    write(*,12)
    end