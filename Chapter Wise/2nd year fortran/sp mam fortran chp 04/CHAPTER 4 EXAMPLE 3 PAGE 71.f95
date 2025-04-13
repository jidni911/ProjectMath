!==program to find the sum of a series
    program summation
    print*,"enter m"
 5   read*,m
     if((m.lt.0).or.(mod(m,2).eq.0))goto 5
     sum1=0.0
     sum2=0.0
     sum3=0.0
     j=1
     do n=1,m
       sum1=sum1+1.0/float(n)
       if(mod(n,2).ne.0)sum2=sum2+1.0/float(n)
       sum3=sum3+real(j)/float(n)
       j=-j
     enddo
     print 10,sum1
 10    format(1x,"1st series=",f8.3/)
     print 20,sum2
 20    format(1x,"2nd series=",f8.3/)
     print 30,sum3
 30    format(1x,"3rd series=",f8.3/)
     end program
       