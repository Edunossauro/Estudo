Program grafico

implicit none !The IMPLICIT NONE statement disables all implicit typing defaults. When IMPLICIT NONE is used, all names in a program unit must be explicitly declared

REAL x,func1,min,max,delx,e !declara as vari�veis reais
Integer nx,ix !declara as vari�veis inteiras
open (unit=5, file 'teste.dat')
min = 0 !come�o do gr�fico
max = 10 !final do gr�fico
nx   = 100 ! n�mero de pontos
delx = (max-min)/dfloat(nx-1) !varia��o entre os pontos

do ix = 1,nx !The DO statement repeatedly executes a set of statements.
x = min + dfloat(ix-1)delx
func1  = 2**x

WRITE(,)'x=', x,'func1=', func1
WRITE(1,)x,func1

ENDDO
open (unit=5, file 'teste.dat')

STOP !para a execu��o do programa
END !finaliza o programa

!pra plotar o gr�fico no gnuplot: digitar no shell:
! "gnuplot" para abrir o gnuplot
! plot 'nomedoarquivo.dat'
