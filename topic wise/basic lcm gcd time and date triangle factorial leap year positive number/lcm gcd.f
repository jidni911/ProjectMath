!     LCM and GCD
      Integer m,n(20),lcm,gcd
      Print*,"how many numbers? max 20"
      read*,m
      print*,"enter the numbers."
      read*,(n(i),i=1,m)
      
      lcm=n(1)
20    Do i=1,m
      If(mod(lcm,n(i)).eq.0) goto 10
      lcm=lcm+1
      goto 20
10    enddo
      Print*,"lcm=",lcm
      
      gcd=n(1)
40    Do i=1,m
      If(mod(n(i),gcd).eq.0) goto 30
      gcd=gcd-1
      goto 40
30    enddo
      Print*,"gcd=",gcd
      
      read*,a
      end
      
