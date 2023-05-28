Testing
-------

The following links contain some basic tests to (hopefully) find any simple bugs
that I might have introduced; and demonstrate some simple programming techniques.

.. toctree::
    test_test01
    test_test02
    test_test03
    test_test04+test05+test06+test07
    test_test08
    test_test09
    test_test10
    test_test11
    test_test12
    test_test13
    test_test14
    test_test15
    test_test16

To compare the images with a previous version, try something like::

    ver1="/path/to/version-1/fortranlib/tests"
    ver2="/path/to/version-2/fortranlib/tests"
    for p1 in ${ver1}/*.png; do p0="$(basename "${p1}")"; p2="${ver2}/${p0}"; h1="$(md5 -q "${p1}")"; h2="$(md5 -q "${p2}")"; [[ $h1 == $h2 ]] && continue; echo "${p0} ..."; compare "${p1}" "${p2}" "${p0}"; done

The :download:`Makefile <../tests/Makefile>` and :download:`run.sh <../tests/run.sh>` script assume that "gfortran" and "openmpi" are being used via the commands ``mpif90`` and ``mpirun``.
