FC=ifort
FFLAGS=-coarray

transpose_corray.x: transpose_coarray.f90
	$(FC) $(FFLAGS) -coarray-num-images=2 transpose_coarray.f90 -o transpose_corray.x

template.x: template.f90
	$(FC) $(FFLAGS) -coarray-num-images=4 $< -o $@
