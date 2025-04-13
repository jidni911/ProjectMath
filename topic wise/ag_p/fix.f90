            x=1
            do 10 i=1,11
                x(i+1)=x(i)**2+1
                if(x(i+1).ne.x(i)) goto 10
                write(6,30), x(i)
   30       format(1x,f6.4)
   10       continue
               stop
               end
