program S4Q2
    parameter(m=3,n=3)
    integer A(m,n),sum, AT(n,m)
    call AMatrix(A,m,n)
    print 10,((A(i,j),j=1,n),i=1,m)
    10 format(3i12)
    sum=0
    do i=1,m-1
        do j=i+1,n
            sum=sum+A(i,j)
        enddo
    enddo
    print*, " The sum is:",sum
    AT=transpose(A)
    print 10,((AT(i,j),j=1,m),i=1,n)

    if ( all(A==AT) ) then
        print*, "The matrix is symmetric"
    else
        print*, "The matrix is not symmetric"
    end if
end program S4Q2

subroutine AMatrix(A,m,n)
    integer m,n,A(m,n),aij,i,j
    do i=1,m
        do j=1,n
            A(i,j)=aij(i,j)
        enddo
    enddo

    
end subroutine AMatrix

function aij(i,j) 
    integer i,j,aij
    if(i+j<4) then
        aij=(i-j)**2
    else
        aij=(2**i+j)**2
    endif

    
end function aij