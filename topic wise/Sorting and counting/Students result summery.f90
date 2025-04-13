     parameter(n=3)
     integer s(n),m(n,4)
     character*15 a(n)
     ic1=0
     ic2=0
     ic3=0
     icf=0


     Read*,((m(i,j),j=1,4),i=1,n)
     do 15 i=1,n
        s(i)=0
        do j=1,4
          s(i)=s(i)+m(i,j)
        enddo
15   continue
    do 10 i=1,n
    do j=1,4
       if((m(i,j).lt.40).or.(s(i).lt.160))then
       a(i)="fail"
       icf=icf+1
       goto 10
       endif
    enddo
    if((s(i).ge.160).and.(s(i).lt.180))then
       a(i)="3rd class"
       ic3=ic3+1
    elseif((s(i).ge.180).and.(s(i).lt.240))then
       a(i)="2nd class"
       ic2=ic2+1
    else
        a(i)="1st class"
        ic1=ic1+1
    endif

10  continue
    do i=1,n
    write(6,20)i,(m(i,j),j=1,4),s(i)/4,a(i)
    enddo
20  format(3x,6i6,5x,a15/)
    print*,"1st class=",ic1
    print*,"2nd class=",ic2
    print*,"3rd class=",ic3
    print*,"failed=",icf
    stop
    end
