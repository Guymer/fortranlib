Welcome to ``fortranlib``'s documentation!
==========================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

Please enjoy using my FORTRAN library. It contains a whole load of random functions and subroutines that I have written over the years. Most of them are overloaded to allow their use by different kinds of arguments. To save repetitive typing you will find some Python scripts dotted around this repository which have been written to create all the different versions of each FORTRAN function or FORTRAN subroutine.

I find the `GFortran Intrinsic Procedures Reference <https://gcc.gnu.org/onlinedocs/gfortran/Intrinsic-Procedures.html>`_ an excellent resource when determining what *kind* an argument must be. As an aside, it niggles me that a lot of intrinsic procedures, according to the FORTRAN standard, are "of default kind" (to me, these are the sort of problems that ``ISO_FORTRAN_ENV`` was supposed to fix).

Ditto, the `MPI 3.1 Specification PDF <https://www.mpi-forum.org/docs/mpi-3.1/mpi31-report.pdf>`_ and `OpenMP 5.0 Specification PDF <https://www.openmp.org/wp-content/uploads/OpenMP-API-Specification-5.0.pdf>`_ are excellent resources too.

FORTRAN Language Conventions
----------------------------

All integers are declared as ``INT64`` (from ``ISO_FORTRAN_ENV``), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

All reals are declared as ``REAL64`` (from ``ISO_FORTRAN_ENV``), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

``GOTO`` statements are never used because `I do not want to be eaten by a velociraptor <https://xkcd.com/292/>`_.

Additionally, ``mod_safe`` contains some other constants, such as ``const_c`` and ``const_kb``. A full list can be found in "consts.f90".

.. include:: dependencies.rst

.. include:: testing.rst

.. include:: todo.rst

.. include:: bugs.rst

Module Reference
----------------

.. toctree::

   mod_geo
   mod_safe
   mod_safe_mpi

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
