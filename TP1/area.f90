program area
    implicit none
    real :: radius
    double precision :: areaCircle, volume,pi
    pi = 4*atan(1.)
    do
        print *, "Type in the radius, a negative value will terminate"
        read *, radius
        if (radius .LT. 0) exit
        !... Calculation area.
        areaCircle = pi * (radius**2)
        volume = (4./3)*pi*(radius**3)
        print *, "Area of circle with radius ",&
            radius, " is ", areaCircle
        print *, "Volume of sphere with radius ",&
            radius, " is ", volume
    end do
end program area