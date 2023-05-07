program integrais
implicit none
real*8 a,b,integral
b=3
a=2

call retangulo(a,b,integral)
print*,'retangulo=',integral

call trapezio(a,b,integral)
print*,'trapezio=',integral

end program integrais

!Função 
real*8 function f(x)
implicit none
real*8 x
f=x**4+x
end function f

subroutine retangulo(a,b,integral)
implicit none
external f
real*8  f,delx,x
real*8, intent(in) :: a
real*8, intent(in) :: b
real*8, intent(out) :: integral
integer n, i
integral=0 
n=1000000
delx=(b-a)/n
do i=1,n
x=a+(i-1)*delx
integral=integral+delx*f(x)
enddo
end subroutine

subroutine trapezio(a,b,integral)
implicit none 
external f
real*8  f,delx,x
real*8, intent(in) :: a
real*8, intent(in) :: b
real*8, intent(out) :: integral
integer n, i
integral=0
n=1000000
delx=(b-a)/n
integral=f(a)+f(b)
do i=1,n-1
 x=a+i*delx
integral=integral+2*f(x)
enddo
integral=integral*(delx/2)
end subroutine 
