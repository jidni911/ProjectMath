	f(x)=(1-sqrt(x))/(1+sqrt(x))
    simp38=0.0
    n=12
    a=1
    b=0
    h=(a-b)/float(n)
    simp13=(f(a)+f(b))*h/3.0
    do i=1,n-1
      if(mod(i,2).eq.0)then
        simp13=simp13+f(b+i*h)*4*h/3.0
      else
        simp13=simp13+f(b+i*h)*2*h/3.0
      endif
    enddo
    simp38=(f(a)+f(b))*3*h/8
    do i=1,n-1
      if(mod(i,3).eq.0)then
        simp38=simp38+f(b+i*h)*2*3*h/8
      else
        simp38=simp38+f(b+i*h)*3*3*h/8
      endif
    enddo
    exact=0.227411
    print*,"evaluation by simpson 1/3 rule is ",simp13
    print*,"evaluation by simpson 3/8 rule is ",simp38
    print*,"exact solution is ",exact
    print*,'error by 1/3 rule is ',Abs(simp13-exact),"which is ",Abs(simp13-exact)/exact,"%"
    print*,'error by 3/8 rule is ',Abs(simp38-exact),"which is ",Abs(simp38-exact)/exact,"%"
    end    
    