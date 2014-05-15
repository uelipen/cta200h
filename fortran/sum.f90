integer a[*],b[*]

a=this_image()
write(*,*) a
b=a
call sumr(1)
write(*,*) b,this_image()

contains 
  recursive subroutine sumr(n)
  integer n,idiff

  itarget=this_image()+n*(mod((this_image()-1)/n+1,2)*2-1)
  sync all
  if(itarget <= num_images() ) b=b+b[itarget]
  if (num_images()/n>2) call sumr(2*n)
end subroutine
end
