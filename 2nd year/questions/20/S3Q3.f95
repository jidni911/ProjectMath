program S3Q3
    integer p,n
    real r
    p=100000
    n=10
    r=0.08

    print*," Year    Simple     Compound  Difference"
    do k= 1,12
        print 10,k , p+p*k*r, p*(1+r)**k, p*(1+r)**k-p-p*k*r
    enddo
    10 format(i5,f12.2,f12.2,f12.2)
    
end program S3Q3