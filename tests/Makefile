# Find executables ...
CUT  := $(shell which cut    2> /dev/null || echo "ERROR")
FC   := $(shell which mpif90 2> /dev/null || echo "ERROR")
GREP := $(shell which grep   2> /dev/null || echo "ERROR")
RM   := $(shell which rm     2> /dev/null || echo "ERROR")

# Set defaults ...
DEBUG  ?= false
FTNLIB ?= ..
LIBDIR ?= /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

# ******************************************************************************

# Set compiler flags ...
DEBG_OPTS := -g -fcheck=all
LANG_OPTS := -ffree-form -ffree-line-length-none -frecursive -fno-unsafe-math-optimizations -frounding-math -fsignaling-nans -fPIC
WARN_OPTS := -Wall -Wextra -Waliasing -Wcharacter-truncation -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure -Wunderflow -Wtabs
OPTM_OPTS := -O2
MACH_OPTS := -march=native -m64

# If the user wants debugging then append the debugging flags to the language
# flags ...
ifeq ($(DEBUG), true)
	LANG_OPTS += $(DEBG_OPTS)
endif

# Check binaries ...
ifeq ($(CUT),ERROR)
    $(error The binary "cut" is not installed)
endif
ifeq ($(FC),ERROR)
    $(error The binary "fc" is not installed)
endif
ifeq ($(GREP),ERROR)
    $(error The binary "grep" is not installed)
endif
ifeq ($(RM),ERROR)
    $(error The binary "rm" is not installed)
endif

# Check Python modules ...
# ifneq ($(shell $(PYTHON3) -c "import numpy; print(0)" 2> /dev/null),0)
    # $(error The Python module "numpy" is not installed)
# endif

# ******************************************************************************

# "gmake -r [all]"   = "make compile" (default)
all:			compile

# "gmake -r clean"   = removes the compiled code
clean:			$(RM)
	$(RM) -f test?? *.mod *.o
	$(MAKE) -r -C $(FTNLIB) clean

# "gmake -r compile" = compiles the code
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
				test14

# "gmake -r help"    = print this help
help:			$(GREP)															\
				$(CUT)
	echo "These are the available options:"
	$(GREP) -E "^# \"gmake -r " Makefile | $(CUT) -c 2-

# ******************************************************************************

.SILENT: help

# ******************************************************************************

# NOTE: As of 01/Nov/2019 there is still a bug in "gcc9" from MacPorts which
#       results in it being unable to find some system libraries. Below are
#       links to the MacPorts ticket and the GCC ticket as well as the reference
#       for my chosen (hopefully temporary) workaround.
#         * https://trac.macports.org/ticket/59113
#         * https://gcc.gnu.org/bugzilla/show_bug.cgi?id=90835
#         * https://stackoverflow.com/a/58081934

$(FTNLIB)/%.mod																	\
$(FTNLIB)/%.o:	$(FTNLIB)/Makefile												\
				$(FTNLIB)/%.F90
	$(MAKE) -r -C $(FTNLIB) DEBUG=$(DEBUG) $*.o

test01.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				$(FTNLIB)/mod_safe_mpi.mod										\
				test01.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test01.F90 -o $@

test02.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				$(FTNLIB)/mod_safe_mpi.mod										\
				test02.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test02.F90 -o $@

test03.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test03.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test03.F90 -o $@

test04.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test04.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test04.F90 -o $@

test05.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				$(FTNLIB)/mod_safe_mpi.mod										\
				test05.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test05.F90 -o $@

test06.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test06.F90
	$(FC) -c -fopenmp $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test06.F90 -o $@

test07.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				$(FTNLIB)/mod_safe_mpi.mod										\
				test07.F90
	$(FC) -c -fopenmp $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test07.F90 -o $@

test08.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test08.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test08.F90 -o $@

test09.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test09.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test09.F90 -o $@

test10.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test10.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test10.F90 -o $@

test11.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test11.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test11.F90 -o $@

test12.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test12.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test12.F90 -o $@

test13.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test13.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test13.F90 -o $@

test14.o:		$(FC)															\
				$(FTNLIB)/mod_safe.mod											\
				test14.F90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) -I$(FTNLIB) test14.F90 -o $@

test01:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				$(FTNLIB)/mod_safe_mpi.o										\
				test01.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test01.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -L$(LIBDIR) -o $@

test02:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				$(FTNLIB)/mod_safe_mpi.o										\
				test02.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test02.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -L$(LIBDIR) -o $@

test03:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test03.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test03.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test04:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test04.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test04.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test05:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				$(FTNLIB)/mod_safe_mpi.o										\
				test05.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test05.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -L$(LIBDIR) -o $@

test06:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test06.o
	$(FC) -fopenmp $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test06.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test07:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				$(FTNLIB)/mod_safe_mpi.o										\
				test07.o
	$(FC) -fopenmp $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test07.o $(FTNLIB)/mod_safe.o $(FTNLIB)/mod_safe_mpi.o -L$(LIBDIR) -o $@

test08:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test08.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test08.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test09:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test09.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test09.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test10:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test10.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test10.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test11:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test11.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test11.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test12:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test12.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test12.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test13:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test13.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test13.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@

test14:			$(FC)															\
				$(FTNLIB)/mod_safe.o											\
				test14.o
	$(FC) $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) test14.o $(FTNLIB)/mod_safe.o -L$(LIBDIR) -o $@
