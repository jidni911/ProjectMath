f(x)=exp(sin(x))
a=0
b = 3.14159/2
n=12
h = (b-a)/real(n)

s=f(a)+f(b)
do i=1,n-1
    if(mod(i,3).eq.0) s=s+2*f(a+i*h)
    if(mod(i,3).ne.0) s=s+3*f(a+i*h)
enddo
s=s*3*h/8.0

print 100,s
100 format('evaluation value= ',f10.5)
print*,'true value=',3.10438
print 200,3.10438-s
200 format('error = ',f10.5)
end

