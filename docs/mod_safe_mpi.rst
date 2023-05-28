:f:mod:`mod_safe_mpi`'s documentation
=====================================

:f:mod:`mod_safe_mpi` is a module that can safely be used (without any extra dependencies) *by a MPI compiler*.

:f:subr:`mod_safe_mpi/sub_allreduce_array` and :f:subr:`mod_safe_mpi/sub_bcast_array` are designed to work around MPI's 32-bit limit on the number of elements that are passed around in a single MPI call. They do this by creating a C pointer to the start of the (optionally multi-dimensional) FORTRAN array and defining the C pointer as being 1D with a length equal to the total size of the (optionally multi-dimensional) FORTRAN array.

:f:subr:`mod_safe_mpi/sub_allreduce_array` and :f:subr:`mod_safe_mpi/sub_bcast_array` use ``C_F_POINTER`` to create the C pointer. The ``SHAPE`` argument to this call is given as ``(/ n /)`` where ``n = SIZE(buff)``, thus ``buff_flat`` is now a flattened view of ``buff`` as far as the subroutine is concerned. The use of ``C_F_POINTER`` has achieved the same result as if ``buff_flat = PACK(buff)`` had been called *but without the duplicated RAM usage*. Now that ``buff_flat`` exists, the data in ``buff`` can easily be sent around in parts through the view that ``buff_flat`` provides. "Sequence Association" then means that the ``buff_flat(i)`` argument to both ``MPI_ALLREDUCE`` and ``MPI_BCAST`` works just as if an entire array was passed instead.

There is a good `discussion about "Sequence Association" on the Intel blog <https://software.intel.com/en-us/blogs/2009/03/31/doctor-fortran-in-ive-come-here-for-an-argument>`_ which explains why ``buff_flat(i)`` "just works".

.. f:automodule:: mod_safe_mpi
