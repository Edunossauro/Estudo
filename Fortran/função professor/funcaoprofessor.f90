PROGRAM grafico !inicia o programa grafico

implicit none !The IMPLICIT NONE statement disables all implicit typing defaults. When IMPLICIT NONE is used, all names in a program unit must be explicitly declared

REAL x,func1,min,max,delx,e !declara as variáveis reais
Integer nx,ix !declara as variáveis inteiras

min = 0 !começo do gráfico
max = 50 !final do gráfico
nx   = 30 ! número de pontos
delx = (max-min)/dfloat(nx-1) !variação entre os pontos

do ix = 10,nx !The DO statement repeatedly executes a set of statements.
x = min + dfloat(ix-1)*delx
func1  = 2**x       !Função que quero calcular ou gerar arquivo .dat

WRITE(*,*)'x=', x,'func1=', func1
WRITE(1,*)x,func1

ENDDO

STOP !para a execução do programa
END !finaliza o programa

!pra plotar o gráfico no gnuplot: digitar no shell:
! "gnuplot" para abrir o gnuplot
! plot 'nomedoarquivo.dat'
