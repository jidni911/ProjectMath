program S6Q2
    p=500
    r=0.012
    deposit=20
    do i = 1, 12
        p=p*(1+r)-deposit
        print*,i, p
    end do
    n=0
    p=500
    do while (p*(1+r) > deposit)
        n=n+1
        p=p*(1+r)-deposit
    end do
    print*,"number of months",n+1
    print*,"last amount",p
    
end program S6Q2