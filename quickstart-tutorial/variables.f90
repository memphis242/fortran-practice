program variables
   implicit none  ! This tells the compiler to not implicitly assume the type of
                  ! variables (it would do so based on the first letter of the
                  ! variable's identifier). In modern Fortran, this is always
                  ! recommended!

   ! -- Variable Declarations --
   ! Note that FORTRAN is case-insensitive!
   integer :: amount
   real :: pi, e ! two `real` variables
   complex :: frequency
   character :: first_name_initial
   logical :: is_okay
   real :: x, y

   ! -- Variable Assignments --
   amount = 10
   pi = 3.1415927
   frequency = (1.0, -0.5)
   first_name_initial = 'A' ! Characters can be surrounded by '' or ""
   is_okay = .false. ! .true. and .false. are the language's boolean values

   ! NOTE: Declaration + assignment on one line does not work the same way in
   !       some other languages. For example,
   !  integer :: amount = 1
   !       does more than just assignment... It implies the `save` attribute on
   !       the variable (i.e., persistence across procedure calls).
   !       It is generally good practice to initialize a variable separate from
   !       its declaration.

   ! -- Print to stdout --
   print *, 'The value of amount (integer) is: ', amount
   print *, 'The value of pi (real) is: ', pi
   print *, 'The value of frequency (complex) is: ', frequency
   print *, 'The value of first_name_initial (character) is: ', first_name_initial
   print *, 'The value of is_okay (logical) is: ', is_okay
   ! Interestingly... the output prints with several trailing spaces after the
   ! string portion and before the variable's value. Also, is_okay printed out
   ! as F instead of .false.

   ! -- Reading from stdin
   print *, '\n\nPlease enter two numbers. ' ! NOTE: The \n won't work
   read(*,*) x, y
   print *, 'The sum and product of the two numbers are ', x+y, x*y

end program variables