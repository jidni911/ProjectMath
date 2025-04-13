       read*,r
      ix=int(r)
      ic=0
      Do 5 i=-ix,ix
      iy=int(sqrt(r**2-Float(ix**2)))
      do 6 j=-iy,iy
      ic=ic+1
6     continue
5     continue
      print*,ic
      read*,a
      end
