      integer fact
      print*," n"
      read*,n
      sum=0.0
       fact=1
      do i=1,n
        fact=fact*i
        enddo
      do k=1,n
        sum=sum+1.0/real(fact(k))
        enddo
        print 20,sum
        20 format(2x,"sum=",f13.5)
        end