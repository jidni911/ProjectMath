!     odd integer till k
      Integer R(5)
      Print*,"what's the value of k?"
      read*,k
      
      n=1
      i=1
      
10    if(n.le.k) then
        if(mod(n,7).ne.0) then
          r(i)=n
          i=i+1
        endif
        n=n+2
        if(i.eq.6) then
          print*,r
          i=1
        endif
        goto 10
      else
        print*,(r(j),j=1,i-1)
      endif
      
      read*,a
      end
