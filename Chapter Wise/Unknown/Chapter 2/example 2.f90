      Real max,min
      max=0
      min=0
      write(6,10)
10    format(2x,' x     y      z')
      do i=0,24
      x=-6+i*0.5
      do j=0,24
      y=-6+j*0.5
      z=x**3-3*x*y+2*x*y+y-2*y**2
      if(z.gt.max)max=z
      if(z.lt.min)min=z
      Write(6,20),x,y,z
20    format(2x,f4.1,4x,f4.1,4x,f8.3)
      enddo
      write(*,*),'end for x=',x
      enddo
      write(6,30),max, min
30    format(2x,'maximum is ',f8.3,' and minimum is ',f8.3)
      end
