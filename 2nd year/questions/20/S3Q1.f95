program S3Q1
    integer n,x,gamma,fact
    gamma(x)=fact(x-1)
    n=12
    print*,gamma(n)


end program S3Q1

function fact(n) 
    integer n,fact
    fact = 1
    do i = 1, n
        fact = fact * i
    enddo
end function fact