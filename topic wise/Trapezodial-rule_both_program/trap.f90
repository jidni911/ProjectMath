 !write a fortran program for Trapezoidal rule of evaluate the function 1/(1+x**2)

            real::a,b
            integer::n
            f(x)=1/(1+x)
            print*,"Enter the value of a,b and n"
            read(*,*)a,b,n
            h=(b-a)/float(n)
            s=f(a)+f(b)
            do i=1,n-1
                s=s+2.0*f(a+float(i)*h)
           end do
           trap=s*h/2.0
           write(*,12)trap
12         format(//,"The answer is = ",f8.5)
            stop
            end
