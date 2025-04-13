Program TestingMAtrix
    Integer A(3,3),A2(3,3),ATA(3,3),Identity(3,3)
    Data A/2,-1,1,-2,3,-2,-4,4,-3/
    Indicator1 = 0
    Indicator2 = 0
    Indicator3 = 0
    Do i=1,3
      Do j=1,3
        If(i.eq.j)then
          Identity(i,j)=1
        Else 
          Identity(i,j)=0
        EndIf
        n1=0
        n2=0
        Do k=1,3
          n1=n1+A(i,k)*A(k,j)
          n2=n2+A(j,k)*A(k,j)
        enddo
        A2(i,j)=n1
        ATA(i,j)=n2
        if(A2(i,j).ne.A(i,j)) Indicator1 = 1
        if(ATA(i,j).ne.Identity(i,j))Indicator2 = 1
        if(A2(i,j).ne.Identity(i,j))Indicator3 = 1
      enddo
    enddo
    Print*, "A is:"
    Print 10,((A(i,j),j=1,3),i=1,3)
    Print*, "Square of A is:"
    Print 10,((A2(i,j),j=1,3),i=1,3)
    Print*, "Product of A and it's transpose is:"
    Print 10,((ATA(i,j),j=1,3),i=1,3)
    Print*, "Identity Matrix  is:"
    Print 10,((Identity(i,j),j=1,3),i=1,3)
10  Format(3x,3i7,/)
    If(Indicator1.eq.1)then
      Print*,"A is not Idempotent"
    Else
      Print*,"A is Idempotent"
    EndIf
    If(Indicator2.eq.1)then
      Print*,"A is not Orthogonal"
    Else
      Print*,"A is Orthogonal"
    EndIf
    If(Indicator3.eq.1)then
      Print*,"A is not Involutory"
    Else
      Print*,"A is Involutory"
    EndIf
    
End Program