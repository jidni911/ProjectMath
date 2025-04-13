	Dimension x(5),y(5)
    data x/2000,2005,2010,2015,2020/
    data y/100,125,139,200,250/
    xx=2003
    sum=0.0
    do i=1,5
      p=1.0
      do j=1,5
        if(i.ne.j)p=p*(xx-x(j))/(x(i)-x(j))
      enddo
      sum=sum+p*y(i)
    enddo
    print*,sum
    end