      parameter (n=10)
      dimension m(n)
      print*,"enter 10 positive integer numbers"
      read*,(m(i),I=1,n)
      do i=1,n-1
      do j=i,n
      if(m(i).gt.m(j)) then
      k=m(i)
      m(i)=m(j)
      m(j)=k
      endif
      print*,m
      enddo
      enddo
      print*,"ascending order"
      print*,(m(i),i=1,n)
      read*,a
      end
