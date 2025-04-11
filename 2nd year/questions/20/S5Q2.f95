program S5Q2
    real x(0:4),f(0:4)
    ff(xx)=sin(log(xx))
    data x/1.0,1.3,1.5,1.9,2.2/

    do i = 0, 4
        f(i) = ff(x(i))
    end do
    print*,f

    xx = 1.1
    s=0.0
    do i = 0, 4
        p=1
        do j = 0, 4
            if (x(j) .ne. x(i)) then
                p=p*(xx-x(j))/(x(i)-x(j))
            endif
        enddo
        s=s+p*f(i)
    enddo
    print*,s
    
end program S5Q2