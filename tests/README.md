This directory contains some basic tests to (hopefully) find any simple bugs that I might have introduced.

### test01

[test01](test01.F90) is compiled by [compile.sh](compile.sh) and it can be run using `mpirun -np 2 ./test01`. Each MPI task will use ~2.3 GiB of RAM. The program uses [sub_bcast_array](../mod_safe_mpi/sub_bcast_array). The correct output should be:

```
Does MPI task 0 of 2 think that everything worked? T
Does MPI task 1 of 2 think that everything worked? T
```

Of course, the ordering of those two lines cannot be relied upon.

### test02

[test02](test02.F90) is compiled by [compile.sh](compile.sh) and it can be run using `mpirun -np 2 ./test02`. Each MPI task will use ~2.3 GiB of RAM. The program uses both [func_overall_index](../mod_safe/func_overall_index) and [sub_allreduce_array](../mod_safe_mpi/sub_allreduce_array); it is a good demonstration of how to do some simple manual work sharing. The correct output should be:

```
Does MPI task 0 of 2 think that everything worked? T
Does MPI task 1 of 2 think that everything worked? T
```

Of course, the ordering of those two lines cannot be relied upon.

### test03

[test03](test03.F90) is compiled by [compile.sh](compile.sh) and it can be run using `./test03`. The program uses three [consts](../mod_safe/consts.f90); it is a simple demonstration of floating-point arithmetic. The correct output should be:

```
Does the task think that everything worked? T
```
