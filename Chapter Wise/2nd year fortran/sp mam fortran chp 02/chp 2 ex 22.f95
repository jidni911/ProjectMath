        !=== number and its squre root===
        program numbers
        implicit none
        real::a(100)
        integer::i
        do i=1,4
          print*,"the value of given integer"
          read(*,*)a(i)
          enddo
          print*,"       value        squre root"
          do i=1,4
            write(*,*)a(i),sqrt(a(i))
            enddo
            end program