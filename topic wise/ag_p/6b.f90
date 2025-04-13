                write(6,5)
5               format(//2x,'Enter the value')
                 read*,n
                sum=0.0
                x=1.0
10            sum=sum+1.0/(x**2)
                x=x+1
                if(x.le.n) goto 10
                pie=sqrt(6.0*sum)
                write(*,40)pie
40              format(//1x, ' The value of Pie is = ',1x, f9.5 )
                stop
                end
