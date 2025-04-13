       program value
       integer j,k
       real x,y,z
       write(6,20)
 20     format(2x,"x    y    z")
       x=-3.0
       do j=1,31
       y=-3.0
       do k=1,31
       z=x**2-2.0*x*y+3.0*y**2-8.0*x+3.0*y-8.0
       write(6,30)x,y,z
       y=y+0.2
       enddo
       x=x+0.2
       enddo
  30   format(2x,f12.5,2x,f12.5,2x,f12.5)
       read*,a
       end
       
