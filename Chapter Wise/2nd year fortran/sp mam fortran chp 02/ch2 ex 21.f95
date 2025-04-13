      program area
      implicit none
      real::a
      integer::b,h
      print*,"b    h"
      read*,b,h
      a=0.5*b*h
      write(2,11)b,h,a
      11 format(2x,"base=",i5,2x,"height=",i5,2x,"Area",f9.5)
      end program
