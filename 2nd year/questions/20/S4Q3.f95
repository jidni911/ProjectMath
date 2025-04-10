program S4Q3
    print 10, "f(-2.5) = ",  f(-2.5)
    print 10, "f(0.2) = ",  f(0.2)
    print 10, "f(2.5) = ",  f(2.5)

    10 format(a,f7.4)
    
end program S4Q3

function f(x) 
    if(x.lt.0.0) then
        f=x**2
    else if(x.le.1) then
        f=0.0
    else
        f=1-x
    endif

    
end function f