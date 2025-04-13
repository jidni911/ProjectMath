
      do 20 x=-3.0,3.0,0.2
          n=0
          do 40 y=-3.0,3.0,0.2
                    z=x**2-2.0*x*y+3.0*y**2-8.0*x+3.0*y-8.0
                    n=n+1
                    print 50,n,x,y,z
 50         format(4x,i20,f6.3,4x,f6.3,4x,f12.2)
 40         continue
 20         continue
               stop
               end

