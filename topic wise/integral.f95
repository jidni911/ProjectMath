               complex f,rooti,z,dz,sumx,sumc,sumt
               data radius,nx/4.0,1000/
               f(z) = z**2/((z**2+4.0)*(z**2+9.0))
               pi=4.0*atan(1.0)
               rooti=cmplx(0.0,1.0)
               theatai=0.0
               thetaf=pi


               dtheta=(thetaf-thetai)/float(nx)
               x0=-radius
               xf=radius
               h=(xf-x0)/float(nx)
  !   C          ====integration through x-axis=======
               sumx=0.0
               !print*,"Radius,nx",radius,nx
               do i=1,nx
                  x=x0+h*float(i)
                  z=x
                  dz=dx
                  sumx=sumx+(dz/2.0)*(f(z)+f(z-dz))
               enddo
               sumc=0.0
               do 12 i=1,nx
                  theta=thetai+dtheta*float(i)
                  z=radius*Exp(rooti*theta)
                  sumc=sumc+(dz/2.0)*(f(z)+f(z-dz))
 12            continue
               sumt=(1.0/2.0)*(sumx+sumc)
 !              print 13,pi/10.0,real(sumt),aimag(sumt)
               print 13,pi/10.0!, real(sumt),aimag(sumt)
               print 14,real(sumt),aimag(sumt)
!C 13           format("pi/10.0,real,aimag=",3(3x,f15.10))
 13            format("pi/10.0=",3(3x,f15.10))
 14            format("real,aimag=",3(3x,f15.10))
               stop
               end
