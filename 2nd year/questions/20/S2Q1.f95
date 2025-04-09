program S2Q2
     integer fibs(50)
     integer count,primeQ
    fibs(1)=1
    fibs(2)=1
    do i = 3, 50
        fibs(i)=fibs(i-1)+fibs(i-2)
    enddo
    print 10,fibs
    10 format(5i14) 
    count = 0
    do i = 1, 50
        if (primeQ(fibs(i)) .eq. 0) then
            count = count + 1
            print *,fibs(i)
        endif
        if (count .eq. 20) then
            exit
        endif
    enddo

end program S2Q2


function fib(n)
    integer n,a,b
    integer fib
    a=1
    b=1
    fib = 1
    do i=3,n
        fib = a + b
        a=b
        b=fib
    enddo
    
end function fib

function primeQ(n)
    integer n,i
    integer primeQ
    primeQ = 1
    if (n .le. 1) then
        primeQ = 0
    endif
    do i=2,n-1
        if (mod(n,i) .eq. 0) then
            primeQ = 0
        endif
    enddo

    
end function primeQ