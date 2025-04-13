program lagrange_interpolation
    parameter(n=4)
    dimension x(0:n),y(0:n)
    data x /1.0, 1.3, 1.5, 1.9, 2.2/
    ! Calculate f(x) values
    do i = 0, n
        y(i) = sin(log(x(i)))
    end do
    ! Point to interpolate
    xx = 1.1
    ! Calculate interpolated value using Lagrange's formula
    yy = 0.0
    do i = 0, n
        Product = 1.0
        do j = 0, n
            if (j .ne. i) then
                Product = Product * (xx - x(j)) / (x(i) - x(j))
            end if
        end do
        yy = yy + y(i) * Product
    end do
    ! Calculate exact value
    exact_value = sin(log(xx))
    ! Print results
    print 10,xx, yy
10  format("Interpolated value at x = ",f3.1, " is: ",f9.7)
    print 20,  xx, exact_value
20  format(7x,"Exact value at x = ",f3.1, " is: ",f9.7)
    print 30,  abs(yy - exact_value)
30  format(22x,"Difference: ",f9.7)
    print 40,100-abs(yy - exact_value)/exact_value*100
40  format(24x,"Accuracy: ",f10.7, "%")

end program lagrange_interpolation