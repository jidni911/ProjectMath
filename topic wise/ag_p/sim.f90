            dimension y(21)
          print*,"value of n"
          read*,n
            h=(1.0-0)/real(n)
            do 10 i=1,11
                x=(float(i)-1.0)*h
                y(i)=1.0/(1.0+x)
10        continue
            s1=y(1)+y(11)
            do 20 k=2,n,2
                s1=s1+4.0*y(k)+2.0*y(k+1)-y(11)
20        continue
            a=(h/3.0)*s1
           write(6,30)a
30           format(////20x,'The value of the Integration is = ', f6.4)
            stop
            end
