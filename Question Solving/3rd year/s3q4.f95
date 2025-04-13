	x=0
    y=0
    z=0
    tol=0.0001
10  x=(-1+y-z)/2.0
    y=2-x-z
    z=(-5+x+y)/2.0
    if(abs(x-(-1+y-z)/2.0).gt.tol.or.abs(y-(2-x-z)).gt.tol.or.abs(z-(-5+x+y)/2.0).gt.tol)goto 10
    print*,x,y,z
    end