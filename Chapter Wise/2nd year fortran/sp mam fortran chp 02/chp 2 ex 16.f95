        program pythagorean
        integer x,y,r,yy,c
        print*,"input the value of r squre"
        read(*,*)r2
        r=sqrt(r2)
        c=0
        do 11 x=-r,r
          yy=sqrt(r2-real(x**2))
          do y=-yy,y
            c=c+1
            enddo
            11 continue
            print*,' number of integer inside circle',c
            end program