        f(x)=1/(1+x)
        write(*,1)
1       format(/1x,"Enter the lower limit")
        read*,a
        write(*,2)
2       format(/1x,"Enter the upper limit")
        read*,b
        write(*,3)
3       format(/1x,"Enter the Subintervals")
        read*,n
        h=(b-a)/n
        p=f(a)+f(b)
        s1=0
        s2=0
        s3=0
        s4=0
        s5=0
        s6=0
        do 4 i1=1,n-1,6
            x1=a+i1*h
            s1=s1+f(x1)
4            continue
            do 5 i2=2,n-1,6
                x2=a+i2*h
                s2=s2+f(x2)
5                continue
            do 6 i3=3,n-1,6
                x3=a+i3*h
                s3=s3+f(x3)
6                continue
            do 7 i4=4,n-1,6
                x4=a+i4*h
                s4=s4+f(x4)
7                continue
            do 8 i5=5,n-1,6
                x5=a+i5*h
                s5=s5+f(x5)
8               continue
            do 9 i6=6,n-1,6
                x6=a+i6*h
                s6=s6+f(x6)
9            continue
            weddle=(3*h/10)*(p+5*s1+s2+6*s3+s4+5*s5+2*s6)
            write(*,20)weddle
20        format(//1x,"The answer is = ",f12.6,".")
            stop
            end
