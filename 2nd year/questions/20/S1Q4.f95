program S1Q4
    integer p,n
    real r
    p=100000
    n=10
    r=0.05

    print*," Year    Simple     Compound  Difference"
    do k= 1,10
        print 10,k , p+p*k*r, p*(1+r)**k, p*(1+r)**k-p-p*k*r
    enddo
    10 format(i5,f12.2,f12.2,f12.2)
    
end program S1Q4