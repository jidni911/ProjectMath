program S1Q2
    real t(0:5),v(0:5)
    data t/0.0,10.0,15.0,20.0,22.5,30.0/
    data v/0.0,227.04,362.78,512.35,602.97,901.67/

    vx = 10.02
    s=0.0
    do i = 0, 5
        p=1
        do j = 0, 5
            if (t(j) .ne. t(i)) then
                p=p*(vx-t(j))/(t(i)-t(j))
            endif
        enddo
        s=s+p*v(i)
    enddo
    print*,s
    
end program S1Q2