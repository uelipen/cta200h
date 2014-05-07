#!/bin/bash
#PBS -l nodes=2:ppn=8
#PBS -q workq
#PBS -r n
#PBS -l walltime=00:01:00
#PBS -N hello
# EVERYTHING ABOVE THIS COMMENT IS NECESSARY, SHOULD ONLY CHANGE nodes,ppn,walltime and my_job_name VALUES
 
cd $PBS_O_WORKDIR

module purge
module load intel/intel-14.0.0 intelmpi/4.1.1.036
export I_MPI_PERHOST=1
export I_MPI_PROCESS_MANAGER=mpd
export FOR_COARRAY_NUM_IMAGES=2
export OMP_NUM_THREADS=8
mpirun -ppn 1 ./hello.x

