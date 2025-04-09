program S2Q3
    f(x) = x**3 - 2*x - 5
    a = 2.0
    b = 3.0
    fa = f(a)
    fb = f(b)

    if (fa * fb .lt. 0) then
        print*, "The root lies in the interval: [", a, ",", b, "]"
    else
        print*, "No root found in the interval: [", a, ",", b, "]"
    endif

    call bisection(a,b,root)
    print 20, "The root is: ", root
    20 format(a,f14.4)

    
end program

subroutine bisection(a,b,root)
    f(x) = x**3 - 2*x - 5
10  c = (a + b) / 2
    fa = f(a)
    fb = f(b)
    fc = f(c)
    if (fa * fc .lt. 0) then
        b = c
        fb = fc
    else
        a = c
        fa = fc
    endif

    if (abs(fa-fb) .lt. 0.0001) then
        root = c
    else
        goto 10
    endif

    
end subroutine bisection