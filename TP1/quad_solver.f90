program quad_solver
    implicit none
    ! Declarations
    real :: D, a, b, c, rac1, rac2 
    print *, "Please type coefficients of polynomial ax^2 +bx +c", &
            "a ="
    read *, a
    print *, "b = "
    read *, b
    print *, "c ="
    read *, c
    D = (b**2)-4*a*c
    if (D .GE. 0) then
        if (D .EQ. 0) then
            rac1 = -b/(2*a)
            print *, "There is only one real root which is r =", rac1
        else
            rac1 = (-b - sqrt(D))/(2.*a)
            rac2 = (-b + sqrt(D))/(2.*a)
            print *, "There are two real roots which are r1 =", rac1, "and r2 =", rac2
        end if
    else
        print *, "There isn't any real roots"
    end if
end program quad_solver