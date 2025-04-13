program matrix2
    real a(3,3)
    data a/.333333,.666666,.666666,-.666666,-.333333,.666666,.666666,-.666666,.333333/
    trace=0.0
    do i=1,3
      trace=trace+a(i,i)
    enddo
    print*,"trace of A = ",trace
    amd=0.0
    bmd=0.0
    do i=1,3
      do j=1,3
        If(i.lt.j)amd=amd+A(i,j)
        If(i.gt.j)bmd=bmd+A(i,j)
      enddo
    enddo
    print*,"Sum of the elements above the main diagonal of A=",amd
    print*,"Sum of the elements below the main diagonal of A=",bmd
    print 10,(((A(i,j)+A(j,i)),j=1,3),i=1,3)
10  format(3f10.5)
    end