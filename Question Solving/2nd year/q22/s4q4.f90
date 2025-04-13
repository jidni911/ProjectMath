f(x)=cos(x)-x*exp(x)
fd(x)=-sin(x)-x*exp(x)-exp(x)
tol=0.00001
x0=2.0

10  x1=x0 - (f(x0)/fd(x0))
print*,x1

if(abs(x0-x1).gt.tol) then
    x0 = x1
    goto 10
end if
print 20,x1
20 format('ans: ',f8.4)
end
