	f(x,y)=y-x**2+1
    x0=0.0
    y0=0.5
    n=20
    x1=2.0
    h=(x1-x0)/float(n)
    print*,"    x          y(x)     1st mod.   2nd mod.   3rd mod."
    do i=1,n
      y=y0+h*f(x0+(i-1)*h,y0)
      y1=y0+h/2*(f(x0+(i-1)*h,y0)+f(x0+i*h,y))
      y2=y0+h/2*(f(x0+(i-1)*h,y0)+f(x0+i*h,y1))
      y3=y0+h/2*(f(x0+(i-1)*h,y0)+f(x0+i*h,y2))
    write(*,10)x0+i*h,y,y1,y2,y3
10  format(2x,5(f8.4,3x))
    enddo
    end