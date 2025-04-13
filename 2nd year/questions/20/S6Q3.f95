program S6Q3
    parameter(n=6)
    real t(n), v(n), diff_table(n,n)

    ! Define the  points
    data t /0, 0.2, 0.4, 0.6, 0.8, 1.0/
    data v /0, 0.0347, 0.1173, 0.2160, 0.2987, 0.3333/

    ! Calculate the divided differences
    do i=1,n
       diff_table(i,1)=v(i)
    end do
    do j=2,n
       do i=1,n-j+1
          diff_table(i,j)=(diff_table(i+1,j-1)-diff_table(i,j-1))/(t(i+j-1)-t(i))
       end do
    end do

    ! Display the divided difference table
   
     print 101, ((diff_table(i,j),j=1,n),i=1,n)
       
    101 format(6f20.4)

    ! Calculate the value of v(tt) using Newton's forward interpolation formula
    tt=0.24
    newton_sum=diff_table(1,1)
    do i=1,n-1
       prod=1
       do j=1,i
          prod=prod*(tt-t(j))
       end do
       newton_sum=newton_sum+prod*diff_table(i+1,i+1)
    end do

    print*, "The value of v(0.24) is:", newton_sum
    
end program S6Q3