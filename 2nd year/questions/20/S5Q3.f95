program S5Q3
    f(x)= exp(sin(3.1415926*x))

    real f,a,b,h,integral
    a=0
    b=1
    h=1.0/6.0
    n= 6
    do i = 0,n
        print*,f(a+i*h)
    end do

    integral = f(a) + f(b)
    do i = 1,n-1
        if (mod(i,2) .eq. 0) then
            integral = integral + 2*f(a+i*h)
        else
            integral = integral + 4*f(a+i*h)
        endif
    enddo
    integral = integral * (h/3.0)
    print*, "The integral value is: ", integral
    
end program S5Q3


   
