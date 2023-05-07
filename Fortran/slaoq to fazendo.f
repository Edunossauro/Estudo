program sequencia
implicit none
integer n1,n2,n3, ix, i
write(*,*)'Esse programa serve para calcular a sequencia de fibonacci, escreva quantas casas voce quer:(exceto o 0)'
read(*,*) ix
n1=0
n2=1
do i=1,ix
n3=n1+n2
n1=n2
n2=n3
write(*,*) n3
enddo
end program
