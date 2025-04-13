            dimension m(1000)
            write(6,30)
30         format(//4x,'Enter the value of k= '//)
               read*,k
               j=0
               n=1
10               if(mod(n,7).ne.0)then
                    j=j+1
                    m(j)=n
                    endif
                    n=n+2
                    if(n.le.k) goto 10
                    write(6,40)(m(i),i=i,j)
 40                       format(//5i5)
                     stop
                     end
