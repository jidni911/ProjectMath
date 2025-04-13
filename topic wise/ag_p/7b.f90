                write(6,30)
 30             format(//5x,'Number',5x,'Square',7x,'Cube',//4x,'*****************************************'//)
                    do 10 m=101,119,2
                        i=m**2
                        l=m**3
                        print 60,m,i,l
60                      format(4x,i5,7x,i5,5x,i8)
10                 continue
                    stop
                    end
