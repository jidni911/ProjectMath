Program AdditionOfMartrices
    Real initial(3,3),Sum(3,3)
    Data initial/ 1,2,2,-2,-1,2,2,-2,1/
    Do i =1,3
      Do j=1,3
        Sum(i,j)=(initial(i,j)+initial(j,i))/3
      Enddo
    Enddo
    Print 10,((Sum(i,j),j=1,3),i=1,3)
10  Format(3x,3F10.4,/)
end program