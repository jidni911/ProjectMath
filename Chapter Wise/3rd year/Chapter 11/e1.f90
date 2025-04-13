    f(x)=sin(x)+3*x-exp(x)
    tol=1e-4
10  read(*,*)a,b
20  if(f(a)*f(b).lt.0)then
        c=(a+b)/2.0
    else
        write(6,*)"Change for another a & b"
        goto 10
    end if
    if(f(a)*f(c).lt.0)then
        b=c
    else
        a=c
    end if
    if(abs(b-a).gt.tol)goto 20
    write(6,*)'the root is=',c
    stop
    end
