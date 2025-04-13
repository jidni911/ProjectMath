                    f(x)=1/(1+x)
                    a=0
                    b=1
                    write(*,6)
6                    format(//,3x,"Enter the value of N")
                    read*,n
                    h=(b-a)/real(n)
                    sum=0.5*(f(a)+f(b))
                    do 19 i=1,n-1
                              x=a+i*h
                              sum=sum+f(x)

19                  continue
                       sum=sum*h
                       print 80,sum
 80                      format(//,1x,"The answer is = ",f8.6,".")
                       stop
                       end
