!     program product
      Dimension IM(50)
10    Print*,"Enter the positive integer you want to break"
      Read*,n
      if(n.lt.1)goto 10
      nu=n
      j=0
      
30    Do i=2,n
      If(mod(n,i).eq.0)goto 20
      enddo
      goto 40
      
20    j=j+1
      IM(j)=i
      n=n/i
      goto 30

40    print*,nu,"="
      Write(6,*),(IM(k),k=1,j)
!50    format(2x,k(i3,"*"),"1")
!      print*,"enter 0 to break again"
      read*,a
!      if(a.eq.0)goto 10

      end
