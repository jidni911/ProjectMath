      print*," value of n"
      read*,n
      sum=0.0
      do k=1,n
        sum=sum+1.0/real(k)
        enddo
        write(6,20)sum
        20 format(2x,"sum=",f12.5)
        end