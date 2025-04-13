      Integer a,b,c,r
      do 5 a=1,24
      do 7 b=a+1,25
      r=a**2+b**2
      c=int(sqrt(float(r)))
      if(r.eq.c**2)print*,a,b,c
 7    continue
 5    continue
      read*,a
      end

