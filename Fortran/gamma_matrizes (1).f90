program gammamatrizesf90
!
implicit none
integer :: i, j
real :: trace0,trace1,trace2,trace3,trace5
!
Complex :: const(4,4) =RESHAPE((/(0,1),(0,0),(0,0),(0,0),&
(0,0),(0,1),(0,0),(0,0),&
(0,0),(0,0),(0,1),(0,0),&
(0,0),(0,0),(0,0),(0,1)/),(/4,4/))

Complex :: gamma0(4,4) = RESHAPE((/(1,0),(0,0),(0,0),(0,0),&
(0,0),(1,0),(0,0),(0,0),&
(0,0),(0,0),(-1,0),(0,0),&
(0,0),(0,0),(0,0),(-1,0)/),(/4,4/))
Complex :: gamma1(4,4) = RESHAPE((/(0,0),(0,0),(0,0),(1,0),&
(0,0),(0,0),(1,0),(0,0),&
(0,0),(-1,0),(0,0),(0,0),&
(-1,0),(0,0),(0,0),(0,0)/),(/4,4/))
Complex :: gamma2(4,4) = RESHAPE((/(0,0),(0,0),(0,0),(0,-1),&
(0,0),(0,0),(0,1),(0,0),&
(0,0),(0,1),(0,0),(0,0),&
(0,-1),(0,0),(0,0),(0,0)/),(/4,4/))
Complex :: gamma3(4,4) = RESHAPE((/(0,0),(0,0),(1,0),(0,0),&
(0,0),(0,0),(0,0),(-1,0),&
(-1,0),(0,0),(0,0),(0,0),&
(0,0),(1,0),(0,0),(0,0)/),(/4,4/))

Complex :: D(4,4)
Complex :: E(4,4)
Complex :: F(4,4)
Complex :: gamma5(4,4)

!
Write(*,*)'Matriz [gamma0]'
do  i=1,4
Write(*,*) (gamma0(i,j),j=1,4)
end do
trace0=(gamma0(1,1)+gamma0(2,2)+gamma0(3,3)+gamma0(4,4))
Write(*,*)'Trace=',trace0
!
Write(*,*)
Write(*,*)'Matriz [gamma1]'
do  i=1,4
Write(*,*) (gamma1(i,j),j=1,4)
end do
trace1=(gamma1(1,1)+gamma1(2,2)+gamma1(3,3)+gamma1(4,4))
Write(*,*)'Trace=',trace1
!
Write(*,*)
Write(*,*)'Matriz [gamma2]'
do  i=1,4
Write(*,*) (gamma2(i,j),j=1,4)
end do
trace2=(gamma2(1,1)+gamma2(2,2)+gamma2(3,3)+gamma2(4,4))
Write(*,*)'Trace=',trace2
!
Write(*,*)
Write(*,*)'Matriz [gamma3]'
do  i=1,4
Write(*,*) (gamma3(i,j),j=1,4)
end do
trace3=(gamma3(1,1)+gamma3(2,2)+gamma3(3,3)+gamma3(4,4))
Write(*,*)'Trace=',trace3
!
D = MATMUL(gamma0,gamma1)
E = MATMUL(gamma2,gamma3)
F = MATMUL(D,E)
gamma5 = MATMUL(const,F)
!
!Matmul faz a multiplicação das matrizes
Write(*,*)
Write(*,*)'Matriz [gamma5] = I*([gamma0] X [gamma1] X [gamma2] X [gamma3])'
!
do i=1,4
Write(*,*) (gamma5(i,j),j=1,4)
end do
trace5=(gamma5(1,1)+gamma5(2,2)+gamma5(3,3)+gamma5(4,4))
Write(*,*)'Trace=',trace5

!
end program
