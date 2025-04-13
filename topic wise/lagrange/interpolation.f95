program interpolation
     real x(0:3),y(0:3)
     data x/101.0,102.0,103.0,104.0/
     do i=0,3
       y(i)=sin(log(x(i)))
     enddo
     x1=103.7
     x2=104.6
     yx=0.0
     do i=0,3
       prod=1.0
       do j=0,3
         if(i.ne.j)then
           prod=prod*(x1-x(j))/(x(i)-x(j))
         endif
       enddo
       yx=yx+prod*y(i)
     enddo
     print*,"for 4 point formula f(103.7)=",yx
     yx=0.0
     do i=0,2
       prod=1.0
       do j=0,2
         if(i.ne.j)then
           prod=prod*(x2-x(j))/(x(i)-x(j))
         endif
       enddo
       yx=yx+prod*y(i)
     enddo
     print*,"for 3point formula f(104.6)=",yx
     end program