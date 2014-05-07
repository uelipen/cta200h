implicit none
integer, parameter :: n=2
integer, dimension(n,n) :: ia[n,*]
integer, dimension(n*n) :: ib[*]
integer i,j,mycoord2(2)

if (num_images() .ne. n**2) then
  write(*,*) 'inconsistent number of images, need ',n,' got ',num_images()
  stop
endif


mycoord2=this_image(ia)
do j=1,n
  ia(:,j)=(/(i,i=0,n-1)/)+(mycoord2(1)-1)*n+(j-1)*n**2+(mycoord2(2)-1)*n**3
enddo
write(*,*) ia,mycoord2

end
