	print*,'enter basic pay'
    read*,n
    if(n.le.800) allowance = 0.55
    if(n.gt.800.and.n.le.1200) allowance = 0.5
    if(n.gt.1200.and.n.le.1650) allowance = 0.45
    if(n.gt.1650) allowance = 0.4
    print*,'total pay',n+n*allowance
    end
