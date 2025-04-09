subroutine generalTerm(n,  term)
    integer n
    double precision term
    term = (2.0**n)/((n+1)*(n+2)) *(2.0**n)
    if (n / 2 .eq. 0) then
        term = term * (4)
    endif
end subroutine generalTerm

program S1Q1
    integer n,i
    double precision term, sum
    print*, "Please enter the value of n:"
    ! read*,n
    n=20
    do i = 1, n
        call generalTerm(i, term)
        print 10,"The ",i,"th term is: ", term
    enddo
    10 format(a,i3,a,f14.3)

    sum = 0
    do i = 1, 20
        call generalTerm(i, term)
        sum = sum + term
    enddo
    print *,"The sum of the first ",n," terms is: ", sum
end program