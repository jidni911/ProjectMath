     print*,"the value of n"
     read*,n
     sum=0.0
     do k=1,n
       sum=sum+1.0/real(k)**2
       enddo
       pi=sqrt(6.0*sum)
       write(6,20)pi
       20 format(2x,"pi=",f15.10)
       end