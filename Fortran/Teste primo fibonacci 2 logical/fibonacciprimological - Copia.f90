program fibonacciprimo
integer n,n1,n2,n3,i,io,numero
logical prime,primo
open(unit=20,file='morfeu.dat')
print*, ('Quantas casas de numeros primos voce quer calcular?')
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
!Ate aqui eu fiz o fibonacci e escrevi em arquivo dat
open(30,file='morfeu.dat')
do 
 read(30,*,iostat=io) n3
 if (io/=0) exit
 prime=primo(n3)
 if (prime) then
  print*, n3
  end if
enddo
close(30)
end program 
!Essa parte da a condi‡ao para printar o numero primo

logical function primo(n3)
  integer, intent(in) :: n3
  !inten(in) diz que o valor do number não vai ser alterado pela subrotina
  logical prime
  prime=.true.
  do i=2,(n3/2)
    if (mod(n3,i)==0) then 
      prime=.false.      
    end if
  enddo
primo = prime
end function


