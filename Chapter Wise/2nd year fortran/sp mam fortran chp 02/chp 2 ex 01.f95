    integer j,k
    real x,y,z
    print*,"  x   y    z"
    x=-3.0
    do j=1,31
      y=-3.0
      do k=1,31
        z=x**2-2.0*x*y+3.0*y**2+3.0*y-8.0
         write(6,20)x,y,z
        y=y+2.0
        enddo
        x=x+2.0
        enddo
        20 format(2x,f12.5,2x,f12.5,2x,f12.5)
        stop
        end
        