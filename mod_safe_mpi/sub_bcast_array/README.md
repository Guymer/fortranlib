### `sub_bcast_array` Notes

The [`MPI_BCAST` reference](https://www.mpi-forum.org/docs/mpi-2.2/mpi22-report/node93.htm#Node93) states that `COUNT` is a default integer, which even on modern 64-bit x86 computers is usually still a signed 32-bit integer. Therefore, a single call of `MPI_BCAST` cannot be used to transfer more than 2,147,483,647 elements.

To get around this problem I have written `sub_bcast_array` which splits up the array into 1 GiB chunks. I could use `MPI_TYPE_CREATE_SUBARRAY` instead, however, that would just pass the buck and it would mean that no single *dimension* could be more than 2,147,483,647 elements as well.
