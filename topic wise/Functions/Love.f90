!   love
    Character A(-50:50,-50:50)
    f(x,y)=x**2+y**2-2*y*x**(3/2)+x**2-1000
    g(x,y)=x**2+y**2+2*y*x**(3/2)+x**2-1000
    Do i=-50,50
        do j=-50,0
            if(f(real(i),real(j)).eq.0) then
                A(i,j)="*"
            else
                A(i,j)=" "
            endif
        enddo
    enddo
    Do i=-50,50
        do j=0,50
            if(g(real(i),real(j)).eq.0) then
                A(i,j)="*"
            else
                A(i,j)=" "
            endif
        enddo
    enddo
    a(0,-31)="*"
    a(0,31)="*"
    a(-31,-30)="*"
    a(-31,30)="*"
    a(25,0)="*"
    a(-23,0)="*"
    do i=-35,35
        print *,A(i,-50:50)
    enddo
    end
