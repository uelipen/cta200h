! transpose coarray
implicit none
integer, parameter :: n=2
integer,dimension(n):: ia[*],ib[*]
integer i

if (num_images() .ne. n) then
  write(*,*) 'inconsistent number of images, need ',n,' got ',num_images()
  stop
endif
ia=(/(i,i=0,n-1)/)+n*(this_image()-1)
write(*,*) ia,'= ia on node ',this_image()
sync all
do i=1,num_images()
  ib(i)=ia(this_image())[i]
enddo
write(*,*) '                  ib on node ',this_image(),' = ',ib
end
