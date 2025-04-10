program S4Q1
    integer n,index,array(100),count
    n=100
    count=0
    do index = 1, n
        if (mod(index,7) .ne. 0) then
            count=count+1
            array(count)=index
        end if
    end do

    print 10,(array(i),i=1,count)
    10 format(5i4)

    
end program S4Q1