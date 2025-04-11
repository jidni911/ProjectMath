program S5Q1
    read*,n
    do i = 1, n
        print*,i
    end do
    sum = 0
    do i = 1, n
        sum = sum + i*(i+1)*(i+2)
    end do
    print*,sum
    
end program S5Q1