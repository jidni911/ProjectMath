Parameter(n=3)
    REAL a(n,n),l(n,n),u(n,n),b(n),x(n),y(n)
    
	print*,"Enter Augmented matrix Row Wise"
    READ*,((a(i,j),j=1,n),b(i),i=1,n)
!optional part Print A,B
    WRITE(6,7)"A=",((a(i,j),j=1,n),i=1,n)
    WRITE(6,8)"b=",(b(i),i=1,n)
!Factorization(echelon)
    l=0
    u=a
    DO j=1,n			!j=1,2,3
        l(j,j)=1		!l(1,1)=l(2,2)=l(3,3)=1
        DO i=j+1,n		!i=(2,3),3
            p=u(i,j)/u(j,j)		!l(i,j)=l(2,1),l(3,1),l(3,2)
            DO k=1,n
                u(i,k)=u(i,k)-p*u(j,k)
            END DO
            l(i,j)=p
        END DO
    END DO
! printing L and U
    WRITE(6,7)"L=",((l(i,j),j=1,n),i=1,n)
    WRITE(6,7)"U=",((u(i,j),j=1,n),i=1,n)
!Solving LY=B
    DO i=1,n
        s=b(i)
        DO j=1,i-1				!(i,j) = (2,1),(3,1),(3,2)
            s=s-l(i,j)*y(j)
        END DO
        y(i)=s/l(i,i)
    END DO
! Print Y
    WRITE(2,8)"y=",(y(i),i=1,n)
! Solving UX=Y
    DO i=n,1,-1				!i=3,2,1
        s=y(i)
        DO j=i+1,n			!(i,j)=(2,3),(1,2),(1,3)
            s=s-u(i,j)*x(j)
        END DO
        x(i)=s/u(i,i)
    END DO
! print X
    WRITE(6,8)"x=",(x(i),i=1,n)

    7 FORMAT(a,/,3(3(f9.3,2x),/))
    8 FORMAT(a,/,3(f9.3,/))

END PROGRAM