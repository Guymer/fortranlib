# Find executables ...
CUT     = $(shell which cut     2> /dev/null || echo "ERROR")
DOXYGEN = $(shell which doxygen 2> /dev/null || echo "ERROR")
EGREP   = $(shell which egrep   2> /dev/null || echo "ERROR")
FC      = $(shell which mpif90  2> /dev/null || echo "ERROR")
RM      = $(shell which rm      2> /dev/null || echo "ERROR")

# Set defaults ...
DEBUG = true

# ******************************************************************************

# Set compiler flags ...
DEBG_OPTS = -g -fcheck=all
LANG_OPTS = -ffree-form -ffree-line-length-none -frecursive -fno-unsafe-math-optimizations -frounding-math -fsignaling-nans
WARN_OPTS = -Wall -Wextra -Waliasing -Wcharacter-truncation -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure -Wunderflow -Wtabs
OPTM_OPTS = -O2
MACH_OPTS = -march=native -m64

# If the user wants debugging then append the debugging flags to the language
# flags ...
ifeq ($(DEBUG), true)
	LANG_OPTS += $(DEBG_OPTS)
endif

# ******************************************************************************

# "gmake [all]"   = "make compile" (default)
all:			compile

# "gmake clean"   = removes the compiled code
clean:			$(RM)
	$(RM) -f *.mod *.o

# "gmake compile" = compiles the code
compile:		mod_safe.o														\
				mod_safe_mpi.o

# "gmake doxygen" = creates the Doxygen documentation
doxygen:		$(DOXYGEN)														\
				doxygen.cfg
	$(DOXYGEN) doxygen.cfg
	$(MAKE) -C doc/latex

# "gmake help"    = print this help
help:			$(EGREP)														\
				$(CUT)
	echo "These are the available options:"
	$(EGREP) "^# \"gmake " Makefile | $(CUT) -c 2-

# ******************************************************************************

.SILENT: help

# ******************************************************************************

mod_safe.mod																	\
mod_safe.o:		$(FC)															\
				mod_safe.F90													\
				mod_safe/*.f90 													\
				mod_safe/*/*.f90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_safe.F90

mod_safe_mpi.mod																\
mod_safe_mpi.o:	$(FC)															\
				mod_safe_mpi.F90												\
				mod_safe_mpi/*/*.f90
	$(FC) -c $(LANG_OPTS) $(WARN_OPTS) $(OPTM_OPTS) $(MACH_OPTS) mod_safe_mpi.F90
