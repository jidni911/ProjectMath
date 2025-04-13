!=Question:
!Solve this linear programming problem by Simplex Method in Fortran
!Language.
!Maximize F= 4x+3y+6z
!   Subject to 3x+5y+9z<=500
!              4x+0y+5z<=350
!              0x+2y+3z<=150
!              x,y,z>=0

!==Main Program
    Integer,parameter::CMAX=10,VMAX=10
    Integer NC,NV,XER
    REAL*8 TS(CMAX,VMAX)
    call Data(NV,NC,TS)
    call Simplex1(NV,NC,TS,XER)
    call Results(NV,NC,TS,XER)
    STOP
    END

!== SUB-program Data
    Subroutine Data(NV,NC,TS)
    Integer,parameter::CMAX=10,VMAX=10
    REAL*8 TS(CMAX,VMAX)
    REAL*8 R1,R2
    Character*1 R
    print*,'  '
    print*,'Simplex Linear Programming'
    print*,'  '
    write(*,30,advance='no');read*,R 
    print*,'  '
    write(*,40,advance='no');read*,NV 
    print*,'  '
    write(*,50,advance='no');read*,NC 
    if(R.eq.'Y'.or.R.eq.'y')then
      r1=1.0
    else
      r1= -10
    endif    
    print*,'  '
    print*,'Insert Coefficient of function F:'
    DO j=1,NV
      write(*,10,advance='no')J;read*,r2
      TS(1,J+1)=R2*R1
    ENDDO
    write(*,60,advance='no');read*,R2
    TS(1,1)=R2*R1
    DO i=1,NC
      write(*,20)i
      DO j=1,NV
        write(*,10,advance='no')J;read*,R2
        TS(I+1,J+1)= -R2
      ENDDO
      Write(*,60,advance='no');read*,TS(i+1,1)
    ENDDO
    print*,'  '
    do j=1,NV
      TS(0,j+1)=float(j)
    enddo
    do i =NV+1,NV+NC
      TS(i-NV+1,0)=float(i)
    enddo
    return
 10 format('    #',i1,'?')
 20 format('Constraint#',i1,'?')
 30 format('Maximize(Y/N)?')
 40 format('Number of variables of function F')
 50 format('Number of constraints')
 60 format('Right hand side')
    end

 !==Sub-program Simplex1
     Subroutine Simplex1(NV,NC,TS,XER)
     Integer,parameter::CMAX=10,VMAX=10
     REAL*8 TS(CMAX,VMAX)
     Integer P1,P2,XER,NOPT
 10  call Pivot(NV,NC,TS,P1,P2)
     call Formula(NV,NC,TS,P1,P2)
     call Optimize(NV,NC,TS,NOPT,XER)
     if(NOPT.EQ.1)goto 10
     return
     end

!==Sub-program Pivot
    Subroutine Pivot(NV,NC,TS,P1,P2)
    Integer,parameter::CMAX=10,VMAX=10
    REAL*8 TS(CMAX,VMAX)
    INTEGER P1,P2
    REAL*8 RAP,V,XMAX
    XMAX=0.d0
    do J=2, NV+1
      if (TS(1,J) > 0.d0.AND.TS(1,J) > XMAX) then 
        XMAX=TS(1,J)
        P2=J
      end if
    end do
    RAP = 999999.d0 
    do I=2, NC+1
      if (TS(I,P2) >= 0.d0) goto 10
      V = dabs(TS(I, 1) / TS(I,P2))
      if (V< RAP) then
        RAP=V
        Pl=I
      endif
10  enddo
    V=TS(0,P2)
    TS(0,P2) = TS(P1,0)
    TS(P1,0) = V
    return
    end
    
!===SUB-PROGRAM 4====
    Subroutine Formula(NV,NC,TS,P1,P2)
    Integer, parameter :: CMAX=10, VMAX=10
    real*8 TS(CMAX, VMAX)
    Integer P1, P2  
    do I=1, NC+1
      if (I== P1) goto 70
      do J=1, NV+1
        if (J== P2) goto 60
        TS(I,J) = TS(I,J) - TS(P1,J) * TS(I,P2) / TS(P1,P2)
60    end do
70  end do
    TS(P1,P2)=1.d0/TS(P1,P2)
    do j=1,NV+1
      if(j==p2)goto 100
      TS(P1,J)=TS(P1,J)*dabs(TS(P1,P2))
100 enddo
    do i=1,NC+1
     if(i==p1)goto 110
     TS(i,p2)=TS(i,p2)*TS(p1,p2)
110 end do
    return
    end


!======SUB-PROGRAM 5===
    Subroutine Optimize(NV,NC,TS,NOPT,XER)
    Integer, parameter :: CMAX=10, VMAX=10
    real*8 TS(CMAX, VMAX)
    Integer XER
    do I=2, NC+1
    if(TS(I, 1)<0.d0) XER= 1
    end do
    NOPT=0
    if(XER== 1) return
    do J=2, NV+1
    if (TS(1,J) > 0.d0) NOPT = 1
    end do
    return
    end
!====SUB-PROGRAM 6=====:
    Subroutine Results(NV, NC,TS,XER)
    Integer, parameter :: CMAX=10, VMAX=10
    real*8 TS(CMAX, VMAX)
    Integer XER
    if(XER == 0) goto 30
    print*,' No solution'
    goto 100
30  do I=1, NV
    do J=2, NC+1
    if (TS(J,0).NE.float(I)) goto 70
    write(*, 120) I, TS(J,1)
70  end do
    end do
    write(*,130) TS(1,1)
100 print*,'  '
    return
120 format('Variable #',I1,': ',F10.6)
130 format('Function: ',F10.6)
    end


========END-Program====