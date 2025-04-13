# ******************************************************************************
# *                                 VARIABLES                                  *
# ******************************************************************************

COVERAGE  ?= false
DEBUG     ?= false
FTNLIB    ?= ..
LANG_OPTS := -fopenmp -ffree-form -ffree-line-length-none -frecursive -fno-unsafe-math-optimizations -frounding-math -fsignaling-nans -fPIC
WARN_OPTS := -Wall -Wextra -Waliasing -Wcharacter-truncation -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure -Wunderflow -Wtabs
MACH_OPTS := -march=native -m64

# ******************************************************************************
# *                                  BINARIES                                  *
# ******************************************************************************

CUT     := $(shell which cut                  2> /dev/null || echo "ERROR")
FC      := $(shell which mpif90-openmpi-gcc14 2> /dev/null || echo "ERROR")
GREP    := $(shell which grep                 2> /dev/null || echo "ERROR")
PYTHON3 := $(shell which python3.12           2> /dev/null || echo "ERROR")
RM      := $(shell which rm                   2> /dev/null || echo "ERROR")

# ******************************************************************************
# *                             DYNAMIC VARIABLES                              *
# ******************************************************************************

ifeq ($(COVERAGE), true)
	LANG_OPTS += -g -O0 --coverage
else ifeq ($(DEBUG), true)
	LANG_OPTS += -g -fcheck=all
else
	LANG_OPTS += -O2
endif

# ******************************************************************************
# *                               CHECK BINARIES                               *
# ******************************************************************************

ifeq ($(CUT),ERROR)
    $(error The binary "cut" is not installed)
endif
ifeq ($(FC),ERROR)
    $(error The binary "fc" is not installed)
endif
ifeq ($(GREP),ERROR)
    $(error The binary "grep" is not installed)
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

# ifneq ($(shell $(PYTHON3) -c "import numpy; print(0)" 2> /dev/null),0)
#     $(error The Python module "numpy" is not installed)
# endif

# ******************************************************************************
# *                             DERIVED VARIABLES                              *
# ******************************************************************************

# SUFFIX ?= $(shell $(PYTHON3) -c "import sysconfig; print(sysconfig.get_config_var(\"EXT_SUFFIX\"))")

# ******************************************************************************
# *                           USER-SPECIFIED TARGETS                           *
# ******************************************************************************

# "gmake -r [all]"   = "gmake -r compile" (default)
all:			compile

# "gmake -r clean"   = removes the compiled FORTRAN code
clean:
	$(RM) -f test?? *.gcda *.gcno *.mod *.o
	$(MAKE) -r -C $(FTNLIB) COVERAGE=$(COVERAGE) DEBUG=$(DEBUG) FC=$(FC) PYTHON3=$(PYTHON3) clean

# "gmake -r compile" = compiles the FORTRAN code
compile:		test01															\
				test02															\
				test03															\
				test04															\
				test05															\
				test06															\
				test07															\
				test08															\
				test09															\
				test10															\
				test11															\
				test12															\
				test13															\
				test14															\
				test15															\
				test16															\
				test17

# "gmake -r help"    = print this help
help:
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

$(FTNLIB)/%.mod																	\
$(FTNLIB)/%.o &:	$(FTNLIB)/%.F90
	$(MAKE) -r -C $(FTNLIB) COVERAGE=$(COVERAGE) DEBUG=$(DEBUG) FC=$(FC) PYTHON3=$(PYTHON3) $*.o

test01.o:			$(FTNLIB)/mod_safe.mod										\
					$(FTNLIB)/mod_safe_mpi.mod									\
					test01.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test01.F90 -o $@

test02.o:			$(FTNLIB)/mod_safe.mod										\
					$(FTNLIB)/mod_safe_mpi.mod									\
					test02.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test02.F90 -o $@

test03.o:			$(FTNLIB)/mod_safe.mod										\
					test03.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test03.F90 -o $@

test04.o:			$(FTNLIB)/mod_safe.mod										\
					test04.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test04.F90 -o $@

test05.o:			$(FTNLIB)/mod_safe.mod										\
					$(FTNLIB)/mod_safe_mpi.mod									\
					test05.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test05.F90 -o $@

test06.o:			$(FTNLIB)/mod_safe.mod										\
					test06.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test06.F90 -o $@

test07.o:			$(FTNLIB)/mod_safe.mod										\
					$(FTNLIB)/mod_safe_mpi.mod									\
					test07.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test07.F90 -o $@

test08.o:			$(FTNLIB)/mod_safe.mod										\
					test08.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test08.F90 -o $@

test09.o:			$(FTNLIB)/mod_safe.mod										\
					test09.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test09.F90 -o $@

test10.o:			$(FTNLIB)/mod_safe.mod										\
					test10.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test10.F90 -o $@

test11.o:			$(FTNLIB)/mod_safe.mod										\
					test11.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test11.F90 -o $@

test12.o:			$(FTNLIB)/mod_safe.mod										\
					test12.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test12.F90 -o $@

test13.o:			$(FTNLIB)/mod_safe.mod										\
					test13.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test13.F90 -o $@

test14.o:			$(FTNLIB)/mod_safe.mod										\
					test14.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test14.F90 -o $@

test15.o:			$(FTNLIB)/mod_safe.mod										\
					test15.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test15.F90 -o $@

test16.o:			$(FTNLIB)/mod_geo.mod										\
					$(FTNLIB)/mod_safe.mod										\
					test16.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test16.F90 -o $@

test17.o:			$(FTNLIB)/mod_safe.mod										\
					test17.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) -I$(FTNLIB) test17.F90 -o $@

test01:				$(FTNLIB)/mod_safe.o										\
					$(FTNLIB)/mod_safe_mpi.o									\
					test01.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test01.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -o $@

test02:				$(FTNLIB)/mod_safe.o										\
					$(FTNLIB)/mod_safe_mpi.o									\
					test02.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test02.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -o $@

test03:				$(FTNLIB)/mod_safe.o										\
					test03.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test03.o $(FTNLIB)/mod_safe.o -o $@

test04:				$(FTNLIB)/mod_safe.o										\
					test04.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test04.o $(FTNLIB)/mod_safe.o -o $@

test05:				$(FTNLIB)/mod_safe.o										\
					$(FTNLIB)/mod_safe_mpi.o									\
					test05.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test05.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -o $@

test06:				$(FTNLIB)/mod_safe.o										\
					test06.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test06.o $(FTNLIB)/mod_safe.o -o $@

test07:				$(FTNLIB)/mod_safe.o										\
					$(FTNLIB)/mod_safe_mpi.o									\
					test07.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test07.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -o $@

test08:				$(FTNLIB)/mod_safe.o										\
					test08.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test08.o $(FTNLIB)/mod_safe.o -o $@

test09:				$(FTNLIB)/mod_safe.o										\
					test09.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test09.o $(FTNLIB)/mod_safe.o -o $@

test10:				$(FTNLIB)/mod_safe.o										\
					test10.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test10.o $(FTNLIB)/mod_safe.o -o $@

test11:				$(FTNLIB)/mod_safe.o										\
					test11.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test11.o $(FTNLIB)/mod_safe.o -o $@

test12:				$(FTNLIB)/mod_safe.o										\
					test12.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test12.o $(FTNLIB)/mod_safe.o -o $@

test13:				$(FTNLIB)/mod_safe.o										\
					test13.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test13.o $(FTNLIB)/mod_safe.o -o $@

test14:				$(FTNLIB)/mod_safe.o										\
					test14.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test14.o $(FTNLIB)/mod_safe.o -o $@

test15:				$(FTNLIB)/mod_safe.o										\
					test15.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test15.o $(FTNLIB)/mod_safe.o -o $@

test16:				$(FTNLIB)/mod_geo.o											\
					$(FTNLIB)/mod_safe.o										\
					test16.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test16.o $(FTNLIB)/mod_geo.o $(FTNLIB)/mod_safe.o -o $@

test17:				$(FTNLIB)/mod_safe.o										\
					test17.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(MACH_OPTS) test17.o $(FTNLIB)/mod_safe.o -o $@
