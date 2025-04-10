program S3Q2
    integer A(3,3),x(3,1),Ax(3,1),At(3,3),Atx(3,1)
    data A/4,2,1,0,3,0,1,2,4/
    data x/1,1,1/
    Ax = matmul(A,x)
    print*, "Original Matrix"

    print 10,((A(i,j),j=1,3),i=1,3)
    print*, "Augmented Matrix"
    print 20,((x(i,j),j=1,1),i=1,3)

    print*, "Resultant Matrix"
    print 20,((Ax(i,j),j=1,1),i=1,3)
    10 format(3i5)
    20 format(i5)

    At = transpose(A)
    print*, "Transpose Matrix"
    print 10,((At(i,j),j=1,3),i=1,3)

    Atx = matmul(At,x)
    print*, "Resultant Matrix"
    print 20,((Atx(i,j),j=1,1),i=1,3)

    if (all(Ax == Atx)) then
        print*, "The result of Ax and Atx are equal"
    else
        print*, "The result of Ax and Atx are not equal"
    endif



    
end program S3Q2