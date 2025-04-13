f(x)=exp(sin(x))
a=0
b = 4* atan(1.0)/2
n=12
h = (b-a)/real(n)

s=f(a)+f(b)
do i=1,n-1
    if(mod(i,2).eq.0) s=s+2*f(a+i*h)
    if(mod(i,2).ne.0) s=s+4*f(a+i*h)
enddo
s=s*h/3.0

print 100,s
100 format('evaluation value= ',f10.5)
print*,'true value=',3.10438
print 200,3.10438-s
200 format('error = ',f10.5)
end

