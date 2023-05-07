Program grafico

implicit none !The IMPLICIT NONE statement disables all implicit typing defaults. When IMPLICIT NONE is used, all names in a program unit must be explicitly declared

REAL x,func1,min,max,delx,e !declara as variáveis reais
Integer nx,ix !declara as variáveis inteiras
open (unit=5, file 'teste.dat')
min = 0 !começo do gráfico
max = 10 !final do gráfico
nx   = 100 ! número de pontos
delx = (max-min)/dfloat(nx-1) !variação entre os pontos

do ix = 1,nx !The DO statement repeatedly executes a set of statements.
x = min + dfloat(ix-1)delx
func1  = 2**x

WRITE(,)'x=', x,'func1=', func1
WRITE(1,)x,func1

ENDDO
open (unit=5, file 'teste.dat')

STOP !para a execução do programa
END !finaliza o programa

!pra plotar o gráfico no gnuplot: digitar no shell:
! "gnuplot" para abrir o gnuplot
! plot 'nomedoarquivo.dat'
