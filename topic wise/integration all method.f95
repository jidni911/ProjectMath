program integration
    f(x)=1.0/(1+x**2)
    a=1.0
    b=5.0
    n=42
    h=(b-a)/real(n)
    trap=f(a)+f(b)
    simp13=f(a)+f(b)
    simp38=f(a)+f(b)
    weddles=0.0
    do i=1,n-1
      trap=trap+2*f(a+i*h)
    enddo
    do i=1,n-1,2
      simp13=simp13+4*f(a+i*h)
    enddo
    do i=2,n-2,2
      simp13=simp13+2*f(a+i*h)
    enddo
    do i=1,n-1
      if(mod(i,3).eq.0)then
        simp38=simp38+2*f(a+i*h)
      else
        simp38=simp38+3*f(a+i*h)
      endif
    enddo
    do i=0,n-6,6
      weddles=weddles+f(a+i*h)+5*f(a+(i+1)*h)+f(a+(i+2)*h)+6*f(a+(i+3)*h)+f(a+(i+4)*h)+5*f(a+(i+5)*h)+f(a+(i+6)*h)
    enddo
    trap=trap*h/2.0
    simp13=simp13*h/3.0
    simp38=simp38*3.0*h/8.0
    weddles=weddles*3.0*h/10.0
    exact=atan(5.0)-atan(1.0)
    print 10,"trapezoidal",trap,abs(exact-trap)
    print 10,"simp13",simp13,abs(exact-simp13)
    print 10,"simp38",simp38,abs(exact-simp38)
    print 10,"weddle",weddles,abs(exact-weddles)
    print 10,"exact",exact,abs(exact-exact)
10  format("result using ",a11," method = ",f8.5," and error is = ",f30.25)    

    end program