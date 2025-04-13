      Real L1,L2,L3
      Dimension L1(4),L2(4),L3(4)
      Print*,"equation 1?"
      Read*,L1(1),L1(2),L1(3),L1(4)

      Print*,"equation 2?"
      Read*,L2(1),L2(2),L2(3),L2(4)
      
      Print*,"equation 3?"
      Read*,L3(1),L3(2),L3(3),L3(4)
      
      print*,"Reducing the augmented matrix of the equation"
      
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)

      If(L1(1).ne.1.0) then
      a=L1(1)
      Do i=1,4
       L1(i)=L1(i)/a
      enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L2(1).ne.0.0) then
       a=L2(1)
       Do i=1,4
       L2(i)=L1(i)*a-L2(i)
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L2(2).ne.1.0) then
       a=L2(2)
       Do i=2,4
       L2(i)=L2(i)/a
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L3(1).ne.0.0) then
       a=L3(1)
       Do i=1,4
       L3(i)=L1(i)*a-L3(i)
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L3(2).ne.0.0) then
       a=L3(2)
       Do i=2,4
       L3(i)=L2(i)*a-L3(i)
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L3(3).ne.1.0) then
       a=L3(3)
       Do i=3,4
       L3(i)=L3(i)/a
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L2(3).ne.0.0) then
       a=L2(3)
       Do i=3,4
       L2(i)=L2(i)-L3(i)*a
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L1(3).ne.0.0) then
       a=L1(3)
       Do i=3,4
       L1(i)=L1(i)-L3(i)*a
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif
      
      If(L1(2).ne.0.0) then
       a=L1(2)
       Do i=2,4
       L1(i)=L1(i)-L2(i)*a
       enddo
      Write(6,10)L1(1),L1(2),L1(3),L1(4)
      Write(6,20)L2(1),L2(2),L2(3),L2(4)
      Write(6,30)L3(1),L3(2),L3(3),L3(4)
      endif

10    format(2x," /",3(f7.2,2x),":",2x,f9.2," \")
20    format(2x,"( ",3(f7.2,2x),":",2x,f9.2,"  )")
30    format(2x," \",3(f7.2,2x),":",2x,f9.2," /"//)

      
      Write(6,40),L1(4),L2(4),L3(4)
40    format(2x,"Hence the required solution is x=",f9.2,"  y=",f9.2,"
     -and z=",f9.2)
      Read*,a
      end
        
