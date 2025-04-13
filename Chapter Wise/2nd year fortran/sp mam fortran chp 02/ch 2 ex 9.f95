    print*,"x,fx"
    do x=-10.0,10.0,0.5
        !x=6
        if(x.lt.0.0)then
            fx=1.0+x/sqrt(1.0+x**2)
        endif
        if(x.eq.0.0)then
            fx=0.0
        endif
        if(x.gt.0.0)then
            fx=1.0-x/sqrt(1.0+x**2)
        endif
        write(6,20)x,fx
20      format(2x,2f12.7)
    enddo
end


