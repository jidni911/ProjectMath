     Real max,min,x1,x2,y1,y2
     max=0
     min=0
     Write(6,10)
10   format(2x,'  x       y         z')
     Do i=0,30
     Do j=0,30
     x=-3+i*0.2
     y=-3+j*0.2
     z=x**2-2*x*y+3*y**2-8*x+3
     write(6,20),x,y,z
20   format(2x,f4.1,4x,f4.1,4x,f8.3)
     if(z.gt.max) then
      max=z
      x1=x
      y1=y
     endif
     if(z.lt.min) then
      min=z
      x2=x
      y2=y
     endif
     enddo
     enddo
     Write(*,*),'max is ',max,' for x=',x1,' and y=',y1,' and min is ',min,' for x=',x2,' and y=',y2
     end

