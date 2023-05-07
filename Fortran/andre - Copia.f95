program subrotinas
  implicit none

  real*8 :: a, b, integral

  a = 1.0
  b = 2.0

  call integral_trapezio(a, b, integral)

  print *,'trapezio=', integral

  call integral_retangulos(a, b, integral)

  print *,'retangulo=', integral

end program subrotinas

real*8 function f(x)
  implicit none

  real*8 x

  f = x**2 - 1
end function f

subroutine integral_retangulos(a, b, integral)
  implicit none

  external f
  real*8 :: f, delx, x
  real*8, intent(in) :: a
  real*8, intent(in) :: b
  real*8, intent(out) :: integral

  integer n, i

  integral = 0
  n = 100000000 
  delx = (b-a)/n
  do i = 1, n
    x = a + (i - 1)*delx
    integral = integral + delx*f(x)
  end do
end subroutine

subroutine integral_trapezio(a, b, integral)
  implicit none

  external f
  real*8 :: f, delx, x
  real*8, intent(in) :: a
  real*8, intent(in) :: b
  real*8, intent(out) :: integral

  integer n, i

  integral = 0
  n = 100000000
  delx = (b-a)/n

  ! A = (b+B)*h/2
  ! h = delx
  ! b = f(x1); x1 = a + (i - 1)*delx
  ! B = f(x2); x2 = a + i*delx

  integral = f(a) + f(b)
  do i = 1, n - 1
     x = a + i*delx
     integral = integral + 2 * f(x)
  end do

  integral = integral*(delx/2)
end subroutine integral_trapezio