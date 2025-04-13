 !===Program Euler's method for solving an ordinary differential equation===
 PROGRAM  EULER
 dimension x(50),y(50)
 f(x,y)=x*y
 write(*,*)'Enter initial point x0 and y0:'
 read(*,*)x0 ,y0
 write (*,*)'Enter Values at which result is to be found;'
 read(*,*)x1
 write(*,*)'Enter the subinterbals:'
 read(*,*)n
 !=====Eulers algorithe================
 x(1)=x0
 y(1)=y0
 h=(x1-x0)/n
 write(*,*)'The function values at each steps :'
 write(*,*) ' x Function values'
 write (*,10)x(1),y(1)
 10 format (1x,f10.4,3x,f10.4)
 do i=1,n
   x(i+1)=x(i)+h
   y(i+1)=y(i)+h*f(x(i),y(i))
   write(*,10)x(i+1),y(i+1)
   enddo
   stop
   end
   function f(x,y)
   f=x*y
   return
   end

