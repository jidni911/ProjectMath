      Double precision Pi,s49,s50,d1,d2
      Pi=4.0*atan(1.0)
      s49=0.0
      Do k=1,49
      s49=s49+(-1.0)**(k+1)*4.0/real(2*k-1)
      enddo
      s50=s49-4.0/99.0
      print*,"sum of 49 terms=",s49
      print*,"sum of 50 terms=",s50
!      write(6,10)s49
!10    format(3x,"sum of 49 terms="f12.7/)
!      write(6,20)s50
!20    format(3x,"sum of 50 terms="f12.7/)
      if((pi-s49).lt.0.0)then
        print*,"s49 is larger than ",pi
        else
        print*,"s49 is smaller than ",pi
      endif
      if((pi-s50).lt.0.0)then
        print*,"s50 is larger than ",pi
        else
        print*,"s50 is smaller than ",pi
      endif
      if(abs(s49-pi).lt.abs(s50-pi))then
      print*,"S49 is closer to ",pi
      else
      print*,"S50 is closer to ",pi
      endif
      read*,a
      end

