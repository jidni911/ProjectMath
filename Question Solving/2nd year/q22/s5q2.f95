    n=500
    sum=0.0
    do i=1,n
        sum=sum+1/real(i**2)
    enddo
    print*,'sum of the series of 500 terms',sum
    print*,'the value of pi=',sqrt(6*sum)
    end

