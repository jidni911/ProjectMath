      print*,"x   ,   fx"
      do x=-10.0,10.0,0.5
         if(x.lt.0.0)then
           fx=1.0-x**2
           endif
           if((x.ge.0.0).and.(x.lt.1.0))then
             fx=1.0+2.0*x
             endif
             if(x.gt.1.0)then
               fx=3.0+1.0/x
               endif
               write(6,20)x,fx
               20 format(2x,2f10.5)
               enddo
               end

