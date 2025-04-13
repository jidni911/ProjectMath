     Write(6,11)
11   Format(2x,'  x      y         z')
     Do i=0,30
        x=-3.0+i*0.2
     Do k=0,30
        y=-3.0+k*0.2
     z=x**2-2*x*y+3*y**2-8*x+3*y-8
     Write(6,12)x,y,z
12   Format(2x,f4.1,4x,f4.1,4x,f8.3)
     enddo
     write(*,*)'end for x=',x
     enddo
     end
