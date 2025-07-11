# ******************************************************************************
# *                                 VARIABLES                                  *
# ******************************************************************************

COVERAGE  ?= false
DEBUG     ?= false
LANG_OPTS := -fopenmp -ffree-form -ffree-line-length-none -frecursive -fno-unsafe-math-optimizations -frounding-math -fsignaling-nans -fPIC
WARN_OPTS := -Wall -Wextra -Waliasing -Wcharacter-truncation -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure -Wunderflow -Wtabs
MACH_OPTS := -march=native -m64

# ******************************************************************************
# *                                  BINARIES                                  *
# ******************************************************************************

AR      := $(shell which ar                   2> /dev/null || echo "ERROR")
CUT     := $(shell which cut                  2> /dev/null || echo "ERROR")
FC      := $(shell which mpif90-openmpi-gcc14 2> /dev/null || echo "ERROR")
GREP    := $(shell which grep                 2> /dev/null || echo "ERROR")
LN      := $(shell which ln                   2> /dev/null || echo "ERROR")
PYTHON3 := $(shell which python3.12           2> /dev/null || echo "ERROR")
RM      := $(shell which rm                   2> /dev/null || echo "ERROR")

# ******************************************************************************
# *                             DYNAMIC VARIABLES                              *
# ******************************************************************************

ifeq ($(COVERAGE), true)
	LANG_OPTS += -g -O0 -fprofile-abs-path --coverage
else ifeq ($(DEBUG), true)
	LANG_OPTS += -g -fcheck=all
else
	LANG_OPTS += -O2
endif

# ******************************************************************************
# *                               CHECK BINARIES                               *
# ******************************************************************************

ifeq ($(AR),ERROR)
    $(error The binary "ar" is not installed)
endif
ifeq ($(CUT),ERROR)
    $(error The binary "cut" is not installed)
endif
ifeq ($(FC),ERROR)
    $(error The binary "fc" is not installed)
endif
ifeq ($(GREP),ERROR)
    $(error The binary "grep" is not installed)
endif
ifeq ($(LN),ERROR)
    $(error The binary "ln" is not installed)
endif
ifeq ($(PYTHON3),ERROR)
    $(error The binary "python3" is not installed)
endif
ifeq ($(RM),ERROR)
    $(error The binary "rm" is not installed)
endif

# ******************************************************************************
# *                            CHECK PYTHON MODULES                            *
# ******************************************************************************

ifneq ($(shell $(PYTHON3) -c "import matplotlib; print(0)" 2> /dev/null),0)
    $(error The Python module "matplotlib" is not installed)
endif
ifneq ($(shell $(PYTHON3) -c "import scipy; print(0)" 2> /dev/null),0)
    $(error The Python module "scipy" is not installed)
endif
ifneq ($(shell $(PYTHON3) -c "import sphinx; print(0)" 2> /dev/null),0)
    $(error The Python module "sphinx" is not installed)
endif

# ******************************************************************************
# *                             DERIVED VARIABLES                              *
# ******************************************************************************

MOD_F2PY_SRC     := $(sort mod_f2py.F90 $(wildcard mod_f2py/*.f90) $(wildcard mod_f2py/*/*.f90))
MOD_GEO_SRC      := $(sort mod_geo.F90 $(wildcard mod_geo/*.f90) $(wildcard mod_geo/*/*.f90))
MOD_SAFE_SRC     := $(sort mod_safe.F90 $(wildcard mod_safe/*.f90) $(wildcard mod_safe/*/*.f90))
MOD_SAFE_MPI_SRC := $(sort mod_safe_mpi.F90 $(wildcard mod_safe_mpi/*.f90) $(wildcard mod_safe_mpi/*/*.f90))
SUFFIX           := $(shell $(PYTHON3) -c "import sysconfig; print(sysconfig.get_config_var(\"EXT_SUFFIX\"))")

# ******************************************************************************
# *                           USER-SPECIFIED TARGETS                           *
# ******************************************************************************

# "gmake -r [all]"       = "gmake -r compile doc" (default)
all:			compile															\
				doc

# "gmake -r clean"       = removes the compiled FORTRAN code and Sphinx documentation
clean:
	$(RM) -f *.a *.gcda *.gcno *.mod *.o *.so
	$(MAKE) -C docs clean

# "gmake -r compile"     = compiles the FORTRAN code
compile:		mod_geo.o														\
				mod_safe.o														\
				mod_safe_mpi.o

# "gmake -r doc"         = compiles the Sphinx documentation
docs/_build/html/objects.inv													\
doc &:
	$(MAKE) -C docs html

# "gmake -r doc-targets" = lists all the available Sphinx documentation targets
doc-targets:	docs/_build/html/objects.inv
	$(PYTHON3) -m sphinx.ext.intersphinx $<

# "gmake -r help"        = print this help
help:
	echo "These are the knwon settings:"
	echo "  COVERAGE = $(COVERAGE)"
	echo "     DEBUG = $(DEBUG)"
	echo "    SUFFIX = $(SUFFIX)"
	echo "These are the available options:"
	$(GREP) -E "^# \"gmake -r " Makefile | $(CUT) -c 2-

# ******************************************************************************
# *                            ENVIRONMENT SETTINGS                            *
# ******************************************************************************

.SILENT: help

# ******************************************************************************
# *                        INTERNALLY-SPECIFIED TARGETS                        *
# ******************************************************************************

# NOTE: There was a bug in NumPy (using "meson" to build) where "f2py" would
#       copy the file to a build folder and, therefore, the relative paths to
#       external libraries would break. To work around this I prepend the
#       current directory to the library path to make it an absolute path. See:
#         * https://github.com/numpy/numpy/issues/25344

# NOTE: See https://numpy.org/doc/stable/f2py/buildtools/distutils-to-meson.html

# NOTE: How GCC embeds the RPATH has changed, which results in binaries which do
#       not work on MacOS 15.5 using GFortran 14.2 and Python 3.12 (as of
#       21/Jun/2025). Here are two examples of other people having the same
#       problem:
#         * https://github.com/mesonbuild/meson/issues/10711
#         * https://stackoverflow.com/questions/52430325/f2py-compilation-failed-cannot-find-library-gomp
#       After hours of investigation, I have settled on a work around using
#       "install_name_tool -add_rpath" on Darwin-based operating systems.

mod_safe/const_cm.f90:															mod_safe/const_cm.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/const_factorial/const_factorial_INT8.f90								\
mod_safe/const_factorial/const_factorial_INT16.f90								\
mod_safe/const_factorial/const_factorial_INT32.f90								\
mod_safe/const_factorial/const_factorial_INT64.f90								\
mod_safe/const_factorial/const_factorial_REAL32.f90								\
mod_safe/const_factorial/const_factorial_REAL64.f90								\
mod_safe/const_factorial/const_factorial_REAL128.f90 &:							mod_safe/const_factorial.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/consts.f90:															mod_safe/consts.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_allocate_array/sub_allocate_1D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_1D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_2D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_3D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_4D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_5D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_6D_REAL128_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT8_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT8_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT16_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT16_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT32_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT32_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT64_integer_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_INT64_logical_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_REAL32_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_REAL64_real_array.f90				\
mod_safe/sub_allocate_array/sub_allocate_7D_REAL128_real_array.f90 &:			mod_safe/sub_allocate_array.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_load_array_from_BIN/sub_load_1D_INT8_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_INT8_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_INT16_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_INT16_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_INT32_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_INT32_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_INT64_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_INT64_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_1D_REAL32_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_1D_REAL64_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_1D_REAL128_real_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT8_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT8_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT16_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT16_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT32_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT32_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT64_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_INT64_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_2D_REAL32_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_2D_REAL64_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_2D_REAL128_real_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT8_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT8_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT16_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT16_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT32_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT32_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT64_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_INT64_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_3D_REAL32_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_3D_REAL64_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_3D_REAL128_real_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT8_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT8_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT16_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT16_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT32_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT32_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT64_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_INT64_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_4D_REAL32_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_4D_REAL64_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_4D_REAL128_real_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT8_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT8_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT16_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT16_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT32_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT32_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT64_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_INT64_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_5D_REAL32_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_5D_REAL64_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_5D_REAL128_real_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT8_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT8_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT16_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT16_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT32_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT32_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT64_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_INT64_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_6D_REAL32_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_6D_REAL64_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_6D_REAL128_real_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT8_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT8_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT16_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT16_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT32_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT32_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT64_integer_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_INT64_logical_array_from_BIN.f90	\
mod_safe/sub_load_array_from_BIN/sub_load_7D_REAL32_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_7D_REAL64_real_array_from_BIN.f90	    \
mod_safe/sub_load_array_from_BIN/sub_load_7D_REAL128_real_array_from_BIN.f90 &:	mod_safe/sub_load_array_from_BIN.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_BIN/sub_save_1D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL128_real_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT8_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT8_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT16_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT16_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT32_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT32_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT64_integer_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_INT64_logical_array_as_BIN.f90		\
mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL32_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL64_real_array_as_BIN.f90	    	\
mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL128_real_array_as_BIN.f90 &:		mod_safe/sub_save_array_as_BIN.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_PBM/sub_save_2D_INT8_logical_array_as_PBM.f90		\
mod_safe/sub_save_array_as_PBM/sub_save_2D_INT16_logical_array_as_PBM.f90		\
mod_safe/sub_save_array_as_PBM/sub_save_2D_INT32_logical_array_as_PBM.f90		\
mod_safe/sub_save_array_as_PBM/sub_save_2D_INT64_logical_array_as_PBM.f90 &:	mod_safe/sub_save_array_as_PBM.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_PGM/sub_save_2D_INT8_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_INT16_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_INT32_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_INT64_integer_array_as_PGM.f90		\
mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL32_real_array_as_PGM.f90	    	\
mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL64_real_array_as_PGM.f90	    	\
mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL128_real_array_as_PGM.f90 &:		mod_safe/sub_save_array_as_PGM.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe/sub_save_array_as_PPM/sub_save_2D_INT8_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_INT16_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_INT32_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_INT64_integer_array_as_PPM.f90		\
mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL32_real_array_as_PPM.f90	    	\
mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL64_real_array_as_PPM.f90	    	\
mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL128_real_array_as_PPM.f90 &:		mod_safe/sub_save_array_as_PPM.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL128_real_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT8_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT8_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT16_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT16_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT32_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT32_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT64_integer_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT64_logical_array.f90		\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL32_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL64_real_array.f90	    	\
mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL128_real_array.f90 &:		mod_safe_mpi/sub_allreduce_array.py
	cd $(<D) && $(PYTHON3) $(<F)

mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL128_real_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT8_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT8_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT16_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT16_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT32_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT32_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT64_integer_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT64_logical_array.f90				\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL32_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL64_real_array.f90	    			\
mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL128_real_array.f90 &:				mod_safe_mpi/sub_bcast_array.py
	cd $(<D) && $(PYTHON3) $(<F)

libmod_geo.a																	\
mod_geo.mod																		\
mod_geo.o &:		$(MOD_GEO_SRC)												\
					mod_safe.mod
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) mod_geo.F90
	$(AR) -r libmod_geo.a mod_geo.o

libmod_safe.a																	\
mod_safe.mod																	\
mod_safe.o &:		$(MOD_SAFE_SRC)
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) mod_safe.F90
	$(AR) -r libmod_safe.a mod_safe.o

libmod_safe_mpi.a																\
mod_safe_mpi.mod																\
mod_safe_mpi.o &:	$(MOD_SAFE_MPI_SRC)
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) mod_safe_mpi.F90
	$(AR) -r libmod_safe_mpi.a mod_safe_mpi.o

mod_f2py.so:		$(MOD_F2PY_SRC)												\
					libmod_safe.a
	$(RM) -f mod_f2py.*.so mod_f2py.so
	FC=$(FC) FFLAGS="$(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS)" $(PYTHON3) -m numpy.f2py -c mod_f2py.F90 -m mod_f2py --backend meson -lgomp -lmod_safe -L$(CURDIR) -I$(CURDIR)
	test $(shell uname) = Darwin && install_name_tool -add_rpath /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib mod_f2py$(SUFFIX) || true
	test $(shell uname) = Darwin && install_name_tool -add_rpath /opt/local/lib mod_f2py$(SUFFIX) || true
	test $(shell uname) = Darwin && install_name_tool -add_rpath /opt/local/lib/libgcc mod_f2py$(SUFFIX) || true
	test $(shell uname) = Darwin && install_name_tool -add_rpath /opt/local/lib/libomp mod_f2py$(SUFFIX) || true
	$(LN) -s mod_f2py$(SUFFIX) mod_f2py.so
