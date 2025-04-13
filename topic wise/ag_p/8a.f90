
                    REAL X(0:3) ,F(0:3), M
                    data x /1.0,4.0,9.0,16.0/
                    data f/101.0,102.0,103.0,104.0/
                    do 50 k=2,4
                        y=6.0
                        sum=0.0
                        do 20 i=0,k-1
                            m=1.0
                            do 10 j=0,k-1
                                if(i.eq.j) goto 10
                                m=m*(y-x(j))/(x(i)-x(j))
10                       continue
                            sum=sum+m*f(i)
20                        continue
                            write(6,30)k
30                format(/3x,'For',1x,i1,'-point Lagranges interpolation formula result is '/)
                            WRITE(6,40)Y,SUM
40                            FORMAT(3X,'F(',F3.1,') = ',F12.6)
 50             CONTINUE
                 STOP
                 END
