program fibonacciprimo
integer n,n1,n2,n3,i,io,primo,numero
logical prime
open(unit=20,file='morfeu.dat')
print*, ('Quantas casas voce quer calcular?')
read (*,*) n
print*,'serao calculadas', n, ' casas'
n1=0
n2=1
print *, 'Numeros fibonacci'
do i=1,n
n3=n1+n2
write(20,*)n3
n1=n2
n2=n3
enddo
close(20)
!At� aqui eu fiz o fibonacci e escrevi em arquivo dat
open(30,file='morfeu.dat')
do 
 read(30,*,iostat=io) numero
 if (io/=0) exit
 if (prime) then
  print*, numero
  end if
enddo
close(30)
end program 
!Essa parte d� a condi��o para printar o n�mero primo

integer function primo(n3)
integer, intent(in) :: n3, numero
!inten(in) diz que o valor do number n�o vai ser alterado pela subrotina
logical prime
prime=.true.
do i=2,(numero/2)
if (mod(numero,i)==0) then 
prime=.false.
return
end if
enddo
end function 




