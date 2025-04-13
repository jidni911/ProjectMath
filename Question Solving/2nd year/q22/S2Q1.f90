Program Numbers
    Integer n,OPI(1:500),counter
    character isPrime
10  print*,"Enter the value of N>=50"
    read*,n
    if(n.lt.50)then
        print*,"n is ",n," which is less than 50"
        goto 10
    end if
20  counter=1
    do i=1,n
        if((mod(i,2).eq.1).and.(mod(i,5).ne.0))then
            OPI(counter)=i
            counter=counter+1
        end if
    end do
    write(6,30)(OPI(k),k=1,counter-1)
30 format(3x,3(i5,5x))
    print*,"testing prime"
    isPrime = 'y'
    if(n.eq.1)isPrime='n'
    do i=2,n-1
        if(mod(n,i).eq.0)then
            isPrime='n'
            print*,"n is divisible by ",i
        endif
    end do
    if(isPrime.eq.'y')then
        print*,"n is prime"
    else
        print*,"n is not prime"
    end if
end

