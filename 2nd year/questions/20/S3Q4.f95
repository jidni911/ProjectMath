program S3Q4
    a=1
    b=2.2
    h=(b-a)/2
    result=0
    call sub(a,h,2,result)
    print*,(h/2)*(f(a)+f(b)+2*result)
    
end program S3Q4

subroutine sub(a,h,n,r)
    integer n
    real r
    r=0.0
    do i=1,n-1
        r=r+f(a+i*h)
    enddo

end subroutine sub

function f(x)
    f=1/(1+x**2)
end function f