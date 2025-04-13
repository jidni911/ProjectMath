program gauss_seidal
   tol=0.00001
   iter=0
   x0=0.0
   y0=0.0
   z0=0.0
10 print 30,iter,x0,y0,z0
30 format("at iteration number ",i3,", the solutions are ",3f10.5,/)
   xn=(6-2.0*y0-3.0*z0)/5.0
   yn=(7-2.0*xn-z0)/4.0
   zn=(1-3.0*xn-2.0*yn)/9.0
   if(abs(xn-x0)+abs(yn-y0)+abs(zn-z0).gt.tol)then
     x0=xn
     y0=yn
     z0=zn
     iter=iter+1
     goto 10
   endif
   print 40,xn,yn,zn
40 format("hence the solutions are ",3f10.5)
   end