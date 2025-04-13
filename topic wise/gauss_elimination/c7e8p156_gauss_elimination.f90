	parameter(n=3)
	dimension a(n,n),b(n),x(n)
	data a/1,2,3,3,2,9,2,4,1/
	data b/6,1,7/
	print 20,((a(i,j),j=1,3),b(i),i=1,3)
20  format(3x,3f8.3,3x,f8.3)
	do k=1,n-1                              !               k=1,2
       p=a(k,k)                             !                p=a(1,1),a(2,2)
       do i=k+1,n                           !                i=2,3   3
           f=a(i,k)/p
           do j=k,n
               a(i,j)=a(i,j)-f*a(k,j)
           enddo
           b(i)=b(i)-f*b(k)
       enddo
    enddo
    print 20,((a(i,j),j=1,3),b(i),i=1,3)
    x(n)=b(n)/a(n,n)
    do k =n-1,1,-1
         sum=0.0
         do j=k+1,n
             sum=sum+a(k,j)*x(j)
         enddo
         x(k)=(b(k)-sum)/a(k,k)
    enddo
    write(6,*)"solutions"
    print*,'x=',x(1)
    print*,'y=',x(2)
    print*,'z=',x(3)
    end
