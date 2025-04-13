      t=500.0 !the money deposed
      a=0.0 !total money after each month
      print*,"   year   amount"
      write(*,*)
      do 15 n=1,10 !for each year
      p=0.0
      do k=12,1,-1
      p=p+t+t*real(k)*0.1/12.0
      print*,p,t,k
      enddo
      a=a+p+a*0.1
      print*,a
      write(6,20)n,a
20    format(1x,i4,4x,f10.2/)
15    continue
      read*,a
      end
