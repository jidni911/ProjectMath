      Dimension L1(4),L2(4),L3(4)
      Print*,"equation 1?"
      Do i=1,4
      Read*,L1(i)
      enddo

      Print*,"equation 2?"
      Do i=1,4
      Read*,L2(i)
      enddo

      Print*,"equation 3?"
      Do i=1,4
      Read*,L3(i)
      enddo

      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
10    format(2x,4(3x,f5.2))
20    format(2x,4(3x,f5.2))
30    format(2x,4(3x,f5.2))

      If(L1(1).ne.1.0) then
      a=L1(1)
      Do i=1,4
       L1(i)=L1(i)/a
      enddo
      endif
      If(L2(1).ne.0.0) then
       a=L2(1)
       Do i=1,4
       L2(i)=L1(i)*a-L2(i)
       enddo
      endif
      If(L2(2).ne.1.0) then
       a=L2(2)
       Do i=2,4
       L2(i)=L2(i)/a
       enddo
      endif
      If(L3(1).ne.0.0) then
       a=L3(1)
       Do i=1,4
       L3(i)=L1(i)*a-L3(i)
       enddo
      endif
      If(L3(2).ne.0.0) then
       a=L3(2)
       Do i=2,4
       L3(i)=L2(i)*a-L3(i)
       enddo
      endif
      If(L3(3).ne.1.0) then
       a=L3(3)
       Do i=3,4
       L3(i)=L3(i)/a
       enddo
      endif
      If(L2(3).ne.0.0) then
       a=L2(3)
       Do i=3,4
       L2(i)=L2(i)-L3(i)*a
       enddo
      endif
      If(L1(3).ne.0.0) then
       a=L1(3)
       Do i=3,4
       L1(i)=L1(i)-L3(i)*a
       enddo
      endif
      If(L1(2).ne.0.0) then
       a=L1(2)
       Do i=2,4
       L1(i)=L1(i)-L2(i)*a
       enddo
      endif

      Print*,L1(4),L2(4),L3(4)
      Read*,a
      end
