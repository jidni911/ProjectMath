program S5Q4
    integer counter
    real x,y,z(1:169)
    counter = 0
    do x =-3,3,0.5
        do y =-3,3,0.5
            counter = counter + 1
            z(counter) = x**3-x**2*y-x*y**2-3*y
            print*,x,y, z(counter)
        end do
    end do
    print*, "The values are: "
    print 10,z
    10 format(3f10.4)
    
end program S5Q4