

                dimension x(10),y(10)
                    write(*,50)
50                    format(//1x,'Enter the number of known Point values'/)
                    read*,n
                    write(*,70)
70                 format(//1x,'Enter the number of x and F(X) function values'/)
                    do 10 i=1,n
                        read*,x(i),y(i)
10                        continue
                    write(*,60)
  60                  format(//1x,'Enter x for which function values'/)
                    read*,a
                    s=0
                    do 20 i=1,n
                        p=1
                        do 30 j=1,n
                            if(i.ne.j)   p=p*(a-x(j))/(x(i)-x(j))

30                            continue
                                s=s+p*y(i)
20                            continue
                    write(*,*)
                    write(*,40)a,s
40              format(1x,'The function value at X= ',f7.3,1x, 'is',1x, f9.4 )
                    stop
                    end
