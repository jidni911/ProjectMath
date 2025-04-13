      real h,k
      Integer fxy,fyx
      parameter(h=0.00001,k=0.00001)
      f(x,y)=(x*y*(x**2-y**2))/(x**2+y**2)
      f0=0.0
      y=k
      fx=(f(h,y)-f(0.0,y))/h
      fxy=(fx-f0)/k
      write(*,*)
      print*,"Fxy=",fxy
      x=h
      fy=(f(x,k)-f(x,0.0))/k
      fyx=(fy-f0)/h
      write(*,*)
      Print*,"fyx=",fyx
      if(fxy.ne.fyx)print*,"fxy"
      pause
      end
