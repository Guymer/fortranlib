:f:mod:`mod_safe`'s documentation
=================================

:f:mod:`mod_safe` is a module that can safely be used (without any extra dependencies).

.. f:subroutine:: mod_safe/sub_save_array_as_PBM(arr, fname)
    Save an array of arbitrary kind/size as a PBM image.

    :synopsis: Please note that (1,1) is the top-left corner and logical arrays are: ``.TRUE.`` = white; and ``.FALSE.`` = black.
    :param arr: the arbitrary kind/size array to be saved as a PBM image
    :param character fname: the PBM image name

.. f:subroutine:: mod_safe/sub_save_array_as_PGM(arr, fname)
    Save an array of arbitrary kind/size as a PGM image.

    :synopsis: Please note that (1,1) is the top-left corner, integer arrays are assumed to be scaled from 0 to 255 inclusive and real arrays are assumed to be scaled from 0 to 1 inclusive.
    :param arr: the arbitrary kind/size array to be saved as a PGM image
    :param character fname: the PGM image name

.. f:subroutine:: mod_safe/sub_save_array_as_PPM(arr, fname, cm)
    Save an array of arbitrary kind/size as a PPM image.

    :synopsis: Please note that (1,1) is the top-left corner, integer arrays are assumed to be scaled from 0 to 255 inclusive and real arrays are assumed to be scaled from 0 to 1 inclusive.
    :param arr: the arbitrary kind/size array to be saved as a PPM image
    :param character fname: the PPM image name
    :param character cm: the colour map name

.. f:automodule:: mod_safe
