program fibonacciprimo
integer n,n1,n2,n3,i,io,primo,numero
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
!Criei o fibonacci e escrevi em arquivo dat
open(30,file='morfeu.dat')
do 
 read(30,*,iostat=io) numero
 if (io/=0) exit
 if (primo(numero)==0) then
  print*, numero
 end if
enddo
close(30)
end program 
!Abri o dat e testei os números para printar só quando o contador for igual a zero

integer function primo(number)
integer, intent(in) :: number
integer contador 
contador=0
do i=2,(number/2)
if (mod(number,i)==0) then 
contador=contador+1
end if
enddo
primo=contador
end function 
!Se o contador for diferente de 0 vai ser primo








