                      f(x)=2+cos(2*sqrt(x))
                       write(*,1)
1                    format(//1x,"Enter lower limit")
                      read*,a
                      write(*,2)
2                    format(//1x,"Enter upper limit")
                       read*,b
                       write(*,3)
3                    format(//1x,"Enter the value of  n")
                       read*,n
                      h=(b-a)/real(n)
                      sum=h*(f(a)+f(b))/3.0
                      do 4 i=1,n-1,2
                              sum=sum+4*h*f(a+real(i)*h)/3
4                    continue
                       do 5 j=2,n-2,2
                                        sum=sum+2*h*f(a+real(j)*h)/3
5                    continue
                     write(*,6)sum
6                    format(1x,"The answer is  = ",f12.3,".")
                     stop
                     end
