      program simpsons
      integer:: n,k
      f(x)=1.0/(1.0+x**2)
      x0=0.0
      xn=12.0
      n=24
10    h=(xn-x0)/float(n)
      s1=(f(x0)+f(xn))
      s2=(f(x0)+f(xn))
      do k=1,n-1
        x1=x0+float(k)*h
        f1=f(x1)
        
        if(mod(k,2).eq.0)then
          s1=s1+2.0*f1
          else
            s1=s1+4.0*f1
        endif
        
        if(mod(k,3).eq.0)then
          s2=s2+2.0*f1
          else
            s2=s2+3.0*f1
        endif
      enddo
      
      s13=s1*(h/3.0)
      s38=s2*(3.0*h/8.0)

      write(6,*),n,s13,s38
      read*,n
      if(n.eq.0)then
      goto 20
      else
      goto 10
      endif
20    end program
