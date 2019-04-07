This directory contains some basic tests to (hopefully) find any simple bugs that I might have introduced.

### test01

[test01](test01.F90) is compiled by [compile.sh](compile.sh) and it can be run using `mpirun -np 2 ./test01`. Each MPI task will use ~2.3 GiB of RAM. The program uses both [func_overall_index](../mod_safe/func_overall_index) and [sub_allreduce_array](../mod_safe_mpi/sub_allreduce_array); it is a good demonstration of how to do some simple manual work sharing. The correct output should be:

```
Does MPI task 0 of 2 think that everything worked? T
Does MPI task 1 of 2 think that everything worked? T
```

Of course, the ordering of those two lines cannot be relied upon.
