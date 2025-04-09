program S1Q3
    integer A(3,3), AT(3,3), AAT(3,3)
    data A/1,3,6,-3,-5,-6,3,3,4/
    AT = transpose(A)
    AAT = matmul(A, AT)
    print 10,((A(i,j),j=1,3),i=1,3)
    print 10,((AT(i,j),j=1,3),i=1,3)
    print 10,((AAT(i,j),j=1,3),i=1,3)
    10 format(3i5)   
end program S1Q3