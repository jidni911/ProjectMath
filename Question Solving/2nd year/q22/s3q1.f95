	parameter(n=50)
	integer fibonacci(1:n)
    fibonacci(1)=1
    fibonacci(2)=1
    do i = 3,n
      	fibonacci(i) = fibonacci(i-1)+fibonacci(i-2)
    enddo
    print*,'fibonacci sequence: '
    print*,fibonacci
    print*,'fibonacci sequence not exceeding 10000:'
    do i=1,n
      	if(fibonacci(i).gt.10000)  goto 10
        print*,fibonacci(i)
    enddo
10  continue
    end
