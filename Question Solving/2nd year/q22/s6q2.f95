	integer a,b,c
10  print*,'enter the value of a>0, b>0 and c>0'
    read*,a,b,c
    if(a.lt.1.or.b.lt.1.or.c.lt.1)then
        print*,'need positive integers'
        goto 10
    endif
    print*,'checking triangle conditions'
    if(a+b.gt.c.and.b+c.gt.a.and.c+a.gt.b)then
        print*,'a,b and c forms the sides of a triangle'
    	print*,'checking equilateral triangle conditions'
        if(a.eq.b.and.b.eq.c) then
            print*,'a,b and c forms the sides of an equilateral triangle'
        else
            print*,'a,b and c doesnt form the sides of an equilateral triangle'
        endif
        print*,'checking isosceles triangle conditions'
        if(a.eq.b.or.b.eq.c.or.c.eq.a) then
            print*,'a,b and c forms the sides of an isosceles triangle'
        else
            print*,'a,b and c doesnt form the sides of an isosceles triangle'
        endif
        print*,'checking right-angled triangle conditions'
        if(a**2+b**2.eq.c**2.or.b**2+c**2.eq.a**2.or.c**2+a**2.eq.b**2) then
            print*,'a,b and c forms the sides of an right-angled triangle'
        else
            print*,'a,b and c doesnt form the sides of an right-angled triangle'
        endif
    else
      print*,'DOES NOT FORM A TRIANGLE'
    endif
end

