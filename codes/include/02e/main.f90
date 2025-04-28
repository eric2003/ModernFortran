! main.f90
program main
    implicit none
    include 'a.h'
    include 'mpif.h'
    

    real :: radius, circumference

    radius = 5.0
    circumference = 2.0 * pi * radius

    print *, 'Circumference:', circumference
end program main