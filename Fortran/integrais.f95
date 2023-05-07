program integrais
implicit real*8 (a-h,o-z)
external f
!
nn=200000
!
!
! Metodo dos retangulos
!
delx = (xmax-xmin)/dfloat(nn-1)
!
tempr=0.d0
do 1 i=1,nn
x= xmin+dfloat(i-1)*delx
tempr=tempr+delx*f(x)
1 enddo
!Metodo do trapezio
tempT=0.d0
deltax=(xmax-xmin)/nn
do 2 j=2,(nn-1)
  tempT=tempT+f(xmin+j*deltax)
2 enddo
resTr=deltax*(tempT+0.5d0*(f(1.d0)+f(2.d0)))
write(*,*)'retangulo=',tempR,'trapezio=',resTr
stop
end
!
function f(x)
real*8 x,f
f=sin(x)*cos(x)
return
end