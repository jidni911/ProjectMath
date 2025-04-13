      Print*," Enter the value of N, darling"
      read*,n
      Do k=1,n
      If(k.lt.2)goto 10
      Do i=2,k/2
      If(mod(k,i).eq.0.0)goto 10
      enddo
      print*,k,"is a prime"
      goto 20
10    print*,k,"is not a prime"
20    continue
      enddo
      read*,a
      end


