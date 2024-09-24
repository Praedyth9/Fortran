program quad_solver_opt
    implicit none
    ! Declarations
    real :: one_over_2a, D, r, a, b, c, rac1, rac2 
    print *, "Please type coefficients of polynomial ax^2 +bx +c", &
            "a ="
    read *, a
    print *, "b = "
    read *, b
    print *, "c ="
    read *, c
    one_over_2a = 1./(2*a)
    D = (b**2)-4*a*c
    if (D .GE. 0) then
        r = sqrt(D)
        if (D .EQ. 0) then
            rac1 = -b*one_over_2a
            print *, "There is only one real root which is r =", rac1
        else
            rac1 = (-b - r)*one_over_2a
            rac2 = (-b + r)*one_over_2a
            print *, "There are two real roots which are r1 =", rac1, "and r2 =", rac2
        end if
    else
        print *, "There isn't any real roots"
    end if
end program quad_solver_opt