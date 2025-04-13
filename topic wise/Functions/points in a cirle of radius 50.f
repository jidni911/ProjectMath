      integer x,y,c
      c=0
      y=int(sqrt(50.0))
      
      do k=-y,y
!      x=int(sqrt((100.0-2.0*real(y**2))/3.0))
      x=int((100.0-2.0*real(y**2))/3.0)
      do n=-x,x
      Print*,x,y
      c=c+1
      enddo
      enddo
      print*,c
      read*,a
      end
