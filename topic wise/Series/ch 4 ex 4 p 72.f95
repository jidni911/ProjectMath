    program summation
    sum=0.0
    do k=1,10000
      sum=sum+1.0/float(k**2)
    enddo
    pi=sqrt(6.0*sum)
    write(6,10)pi
10  format(3x,"value of pi=",f14.10/)
    Print*,"number of terms=",k-1
    end program
       