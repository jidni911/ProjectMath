program S2Q3
    parameter (n = 3)
    Dimension A(n,n), B(n,n), AB(n,n)
    A=0
    B=0
    AB=0
    do i = 1, n
        do j = 1, n
            print*, "Enter the value of A(",i,",",j,")"
            read(*,*) A(i,j)
        end do
    end do

    do i = 1, n
        do j = 1, n
            print*, "Enter the value of B(",i,",",j,")"
            read*, B(i,j)
        end do
    end do

    AB = matmul(A,B)

    print 10,((AB(i,j),j=1,n),i=1,n)
    10 format(3i5)
    
    
end program S2Q3