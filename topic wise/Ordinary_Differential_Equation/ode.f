      real k1,k2
      f(x,y)=x*y
      x0=1.0
      y0=5.0
      h=0.1
      n=5
      print*,"   x     y"
      do i=1,n
      k1=h*f(x0,y0)
      k2=h*f(x0+h,y0+k1)
      y1=y0+(k1+k2)/2.0
      x1=x0+h
      write(6,12)x1,y1
12    format(1x,f5.1,2x,f6.2)
      y0=y1
      x0=x1
      enddo

      end
