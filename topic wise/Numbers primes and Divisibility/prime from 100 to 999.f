      integer p(100)
      j=0
      do 20 k=100,999
      do i=2,k/2
      if(mod(k,i).eq.0.0)goto 20
      enddo
      j=j+1
      p(j)=k
20    continue
      print 30,(p(i),i=1,j)
30    format(3x,5i10)
      read*,a
      end
