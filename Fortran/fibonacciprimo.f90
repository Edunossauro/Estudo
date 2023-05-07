program sequencia
implicit none
integer n1,n2,n3, ix, i, p
write(*,*)'Esse programa serve para calcular a sequencia de fibonacci e primos, escreva quantas casas voce quer:(exceto o 0)'
read(*,*) ix
n1=0
n2=1
do i=1,ix
n3=n1+n2
write(*,*) n3
do p=2,(n3/2)
 if (mod(n3,p)==0) then
 write(*,*) 'nao primo'
 end if
 enddo
n1=n2
n2=n3
enddo
stop
end
