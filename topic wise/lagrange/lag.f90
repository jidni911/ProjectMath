            real x(0:15),y(0:15),p
            print*,'Enter the number of intervals'
            read*,n
            print*,'Enter N+1 values of x'
            read*,(x(i),i=0,n)
            print*,'Enter N+1 values of y'
            read*,(y(i),i=0,n)

            print*,'Enter the value of x'
            read*,xx
             do 23 k=2,4
            sum=0.0
            do 15 i=0,k-1
                p=1
                do 25 j=0,k-1
                   if(i.eq.j) goto 25
                   p=p*(xx-x(j))/(x(i)-x(j))

25              continue
                sum=sum+p*y(i)
15          continue
            write(*,19)k
19          format(3x,'For',i1,'-point Lagrange interpolation formula')
            write(*,50)xx,sum
50         format(3x,'f(',f3.1,')= ',f17.5)
23          continue
            stop
            end



