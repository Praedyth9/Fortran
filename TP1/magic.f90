program magic
    implicit none
    integer :: nb
    integer :: compteur = 0 
    print *, "Type a positive integer, else the program will terminate"
    read *, nb
    do 
        if (nb .LE. 1) exit
        if (MOD(nb,2) == 0) then
            nb = nb/2
        else
            nb = 3*nb +1
        end if
        compteur = compteur + 1
        print *, "Iteration :", compteur, "Current number :", nb
    end do
    if (nb .EQ.0) then
        print *, "Nope, we are not going in an infinite loop with the value 0 :')"
    else
        print *, "End of the program, number of iterations :", compteur      
    endif
end program magic