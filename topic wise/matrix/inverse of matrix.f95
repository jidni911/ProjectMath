Program InverseOfMatrix
    Dimension A(3,3),B(6,3)
    data A/3,5,7,4,7,5,9,4,3/
    det=3*7*3+4*4*7+9*5*5-3*4*5-4*5*3-9*7*7
    if(det.eq.0.0)then
      print*,"the matrix is not invertible"
      goto 10
    endif
    do i=1,3
      do j=1,3
        b(i,j)=a(i,j)
        if(i.eq.j)then
          b(i,j+3)=1.0
        else
          b(i,j+3)=0.0
        endif
      enddo
    enddo
    do i=1,3
      pivot=b(i,i)
      do j=1,6
        b(i,j)=b(i,j)/pivot
      enddo
      
    enddo
10  end    