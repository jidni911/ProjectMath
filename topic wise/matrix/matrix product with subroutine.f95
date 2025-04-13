           !============ product of two matrices==================
           PROGRAM MATRIXPROD
            dimension a(10,10),b(10,10),c(10,10)
            integer p,q
            write(*,*)'Enter the order of the 1st matricex:'
            read(*,*)m,n
            write(*,*)'Enter the order of the 2nd matricex:'
            read(*,*)p,q
            IF(n.NE.p)THEN
            write(*,*)'Two matrices are not multipable.'
            STOP
            ENDIF
            call inpt(a,m,n)
            call inpt(b,p,q)
            call prod(a,b,c,m,n,q)
            call output(c,m,q)
            STOP
            END
            !===subroutine order of the matrix====
            subroutine inpt(a,m,n)
            dimension a(10,10)
            write(*,10)m,n
            10format(1x,'Enter the matrix of order',I2,'*'I2,':')
            read(*,*)((a(i,j),j=1,n),i=1,m)
            END
            !===subroutine of the product matrix====
            subroutine prod(a,b,c,m,n,q)
            dimension a(10,10),b(10,10),c(10,10)
            integer q
            DO 20i=1,m
            Do 30j=1,q
            c(i,j)=0
            DO k=1,n
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
            ENDDO
            30 continue
            20 continue
            END
             !===subroutine of the output matrix====
            subroutine output(c,m,q)
            dimension c(10,10)
            integer q
            write(*,*)'The product matrix is:'
            DO 50 i=1,m
            DO j=1,q
            write(*,55)c(i,j)
            55 format(3x,F6.2,4x'\')
            ENDDO
            write(*,*)
            50 continue
            END

