program gold_number
    implicit none
    double precision, parameter :: gold_num = (1+sqrt(5.d0))/2.d0
    double precision :: val_erreur, gold_approached
    integer, parameter :: n = 20
    real, dimension(1:2) :: u = (/ 1., 1./)
    integer :: i 
    real :: temp
    do i=2,n,1
        temp = u(1)
        u(1) = u(2)+u(1)
        u(2) = temp
    end do 
    gold_approached = u(1)/u(2)
    print *, "approached value of the golden number :", gold_approached
    print *, "error between exact and approached :", gold_num-gold_approached
end program gold_number