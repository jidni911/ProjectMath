!==Eigen value
    Real a(3,3), x0(3),lambda,x1(3)
    data a/1,1,0,6,2,0,1,0,3/
    data x0/1,0,0/
10  print*,'starting sequence'  
    call steps(a,x0,lambda,x1)
    if(abs(x0(1)-x1(1)).lt.0.0001.and.abs(x0(2)-x1(2)).lt.0.0001.and.abs(x0(3)-x1(3)).lt.0.0001)goto 30
    print*,'sequence didnt match'
    x0=x1
    goto 10
30  print*,'eigen value is ',lambda
    end
    
    subroutine steps(a,x0,lambda,x1)
    Real a(3,3), x0(3),lambda,x1(3)
    do i=1,3
      x1(i)=0
      do j=1,3
        x1(i)=x1(i)+a(i,j)*x0(j)
      enddo
    enddo
    lambda=x1(1)
    do i=1,3
      x1(i)=x1(i)/lambda
    enddo
    write(*,20)(a(1,i),i=1,3),x0(1),x1(1)
20  format('/',3f7.2,'\','/',f7.2,'\',6x,'/',f7.2,'\')
    write(*,21)(a(2,i),i=1,3),x0(2),lambda,x1(2)
21  format('(',3f7.2,')','(',f7.2,')=',f4.2,'*(',f7.2,')')
    write(*,22)(a(3,i),i=1,3),x0(3),x1(3)
22  format('\',3f7.2,'/','\',f7.2,'/',6x,'\',f7.2,'/')
    end