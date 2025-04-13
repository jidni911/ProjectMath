Program Testing
    Integer A(3,3),ATA(3,3),Identity(3,3),A2(3,3),C(3,3),D(3,3)
    Data A/0,-5,4,5,0,-3,-4,3,0/
    Indicator1 = 0    
    Indicator2 = 0
    Indicator3 = 0
    Do i = 1,3
      Do j = 1,3
        If(i.eq.j)then
          Identity(i,j)=1
        Else 
          Identity(i,j)=0
        EndIf  
        if(A(i,j).ne.A(j,i))Indicator1=1
        if(A(i,j).ne.-A(j,i))Indicator2=1
        n1=0
        n2=0
        Do k=1,3
          n1=n1+A(j,k)*A(k,j)
          n2=n2+A(i,k)*A(k,j)
        EndDo
        ATA(i,j)=n1
        A2(i,j)=n2
        if(ATA(i,j).ne.Identity(i,j))Indicator3 = 1
      EndDo
    EndDo
    If(Indicator1.eq.1)then
      Print*,"A is not Symmetric"
    Else
      Print*,"A is Symmetric"
    EndIf
    If(Indicator2.eq.1)then
      Print*,"A is not Anti-Symmetric"
    Else
      Print*,"A is Anti-Symmetric"
    EndIf
    If(Indicator3.eq.1)then
      Print*,"A is not Orthogonal"
    Else
      Print*,"A is Orthogonal"
    EndIf
    Do i = 1,3
      Do j = 1,3
        C(i,j)=A2(i,j)+A(i,j)  
        n=0
        Do k=1,3
          n=n+A2(i,k)*A(k,j)
        EndDo
        D(i,j)=n
      EndDo
    EndDo
    Print*, "Matrix C is:"
    Print 10,((C(i,j),j=1,3),i=1,3)
    Print*, "Matrix D is:"
    Print 10,((D(i,j),j=1,3),i=1,3)
10  Format(3x,3i7,/)
End Program