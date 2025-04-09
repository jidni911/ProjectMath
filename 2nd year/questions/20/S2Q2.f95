program S2Q2
    DIMENSION A(3,3), AT(3,3)
    data A/2.4,-1.5,1.9,-2.3,3.7,-2.3,-4.1,4.1,-3.8/

    trace = 0.0
    do i = 1, 3
        trace = trace + A(i, i)
    end do
    print*, "Trace of A is:", trace

    sum_above_diag = 0.0
    do i = 1, 2
        do j = i + 1, 3
            sum_above_diag = sum_above_diag + A(i, j)
        end do
    end do
    print*, "Sum of elements above the main diagonal is:", sum_above_diag

    sum_below_diag = 0.0
    do i = 2, 3
        do j = 1, i - 1
            sum_below_diag = sum_below_diag + A(i, j)
        end do
    end do
    print*, "Sum of elements below the main diagonal is:", sum_below_diag

    AT = transpose(A)
    do i = 1, 3
        do j = 1, 3
            A(i, j) = A(i, j) + AT(i, j)
        end do
    end do
    print*, "A + transpose(A) is:"
    do i = 1, 3
        print*, (A(i, j), j = 1, 3)
    end do

end program