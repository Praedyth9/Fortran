program linsolve
    implicit none
    ! Declaration
    real :: a, b, c, d, e, f
    double precision x, y, det
    print *, "Type values of a,b,c,d,e and f such as ax + by = e and cx + dy = f"
    print *, "a ="
    read *, a
    print *, "b ="
    read *, b
    print *, "e ="
    read *, e 
    print *, "c ="
    read *, c
    print *, "d ="
    read *, d
    print *, "f ="
    read *, f
    det = a*d-b*c
    if (det .EQ. 0) then
        print *, "There isn't a solution to the system of equations"
    else
        x = (1./det)*(d*e-b*f)
        y = (1./det)*(a*f-c*e)
        print *, "The solutions are x =", x, "and y =", y
    endif
end program linsolve