###########################################################################
## Makefile generated for MATLAB file/project 'Embedded_MBSS'. 
## 
## Makefile     : Embedded_MBSS_rtw.mk
## Generated on : Wed Oct 14 15:57:20 2020
## MATLAB Coder version: 4.3 (R2019b)
## 
## Build Info:
## 
## Final product: T:/SBU/Thesis/Codes/Matlab/MBSS/Embedded_MBSS.elf
## Product type : executable
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile

PRODUCT_NAME              = Embedded_MBSS
MAKEFILE                  = Embedded_MBSS_rtw.mk
MATLAB_ROOT               = T:/MATLAB~1
MATLAB_BIN                = T:/MATLAB~1/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/win64
MASTER_ANCHOR_DIR         = 
START_DIR                 = T:/SBU/Thesis/Codes/Matlab/MBSS/codegen/exe/Embedded_MBSS
TGT_FCN_LIB               = ISO_C
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 0
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 
RELATIVE_PATH_TO_ANCHOR   = .
C_STANDARD_OPTS           = 
CPP_STANDARD_OPTS         = 

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          Linaro Toolchain v4.8
# Supported Version(s):    
# ToolchainInfo Version:   2019b
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# TARGET_LOAD_CMD_ARGS
# TARGET_PKG_INSTALLDIR
# LINARO_TOOLCHAIN_4_8

#-----------
# MACROS
#-----------

SHELL                 = %SystemRoot%/system32/cmd.exe
CCOUTPUTFLAG          = --output_file=
LDOUTPUTFLAG          = --output_file=

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = -lm -lm

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# Assembler: Linaro Toolchain4.8 Assembler
AS_PATH = $(LINARO_TOOLCHAIN_4_8)
AS = "$(AS_PATH)/arm-linux-gnueabihf-as"

# C Compiler: Linaro Toolchain4.8 C Compiler
CC_PATH = $(LINARO_TOOLCHAIN_4_8)
CC = "$(CC_PATH)/arm-linux-gnueabihf-gcc"

# Linker: Linaro Toolchain4.8 Linker
LD_PATH = $(LINARO_TOOLCHAIN_4_8)
LD = "$(LD_PATH)/arm-linux-gnueabihf-gcc"

# C++ Compiler: Linaro Toolchain4.8 C++ Compiler
CPP_PATH = $(LINARO_TOOLCHAIN_4_8)
CPP = "$(CPP_PATH)/arm-linux-gnueabihf-g++"

# C++ Linker: Linaro Toolchain4.8 C++ Linker
CPP_LD_PATH = $(LINARO_TOOLCHAIN_4_8)
CPP_LD = "$(CPP_LD_PATH)/arm-linux-gnueabihf-g++"

# Archiver: Linaro Toolchain4.8 Archiver
AR_PATH = $(LINARO_TOOLCHAIN_4_8)
AR = "$(AR_PATH)/arm-linux-gnueabihf-ar"

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)/mex"

# Download: Download
DOWNLOAD_PATH = $(TARGET_PKG_INSTALLDIR)
DOWNLOAD = "$(DOWNLOAD_PATH)/ssh_download.bat"

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: GMAKE Utility
MAKE_PATH = %MATLAB%\bin\win64
MAKE = "$(MAKE_PATH)/gmake"


#-------------------------
# Directives/Utilities
#-------------------------

ASDEBUG             = -g
AS_OUTPUT_FLAG      = -o
CDEBUG              = -g
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
MEX_DEBUG           = -g
RM                  = @del /F
ECHO                = @echo
MV                  = @move
RUN                 =

#--------------------------------------
# "Faster Runs" Build Configuration
#--------------------------------------

ARFLAGS              = -ruvs
ASFLAGS              = -c \
                       $(ASFLAGS_ADDITIONAL) \
                       $(INCLUDES)
CFLAGS               = -c \
                       -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -O2
CPPFLAGS             = -c \
                       -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -O2
CPP_LDFLAGS          = -lm -lrt -lpthread -ldl
CPP_SHAREDLIB_LDFLAGS  = -shared  \
                         -lm -lrt -lpthread -ldl
DOWNLOAD_FLAGS       = $(TARGET_LOAD_CMD_ARGS) $(PRODUCT)
EXECUTE_FLAGS        =
LDFLAGS              = -lm -lrt -lpthread -ldl
MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =
MAKE_FLAGS           = -f $(MAKEFILE)
SHAREDLIB_LDFLAGS    = -shared  \
                       -lm -lrt -lpthread -ldl



###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = T:/SBU/Thesis/Codes/Matlab/MBSS/Embedded_MBSS.elf
PRODUCT_TYPE = "executable"
BUILD_TYPE = "Executable"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = -I$(START_DIR) -IT:/SBU/Thesis/Codes/Matlab/MBSS -I$(START_DIR)/examples -I$(MATLAB_ROOT)/extern/include -I$(MATLAB_ROOT)/simulink/include -I$(MATLAB_ROOT)/rtw/c/src -I$(MATLAB_ROOT)/rtw/c/src/ext_mode/common -I$(MATLAB_ROOT)/rtw/c/ert

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_CUSTOM = 
DEFINES_STANDARD = -DMODEL=Embedded_MBSS -DHAVESTDIO -DUSE_RTMODEL

DEFINES = $(DEFINES_CUSTOM) $(DEFINES_STANDARD)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = $(START_DIR)/rt_nonfinite.c $(START_DIR)/rtGetNaN.c $(START_DIR)/rtGetInf.c $(START_DIR)/Embedded_MBSS_data.c $(START_DIR)/Embedded_MBSS_initialize.c $(START_DIR)/Embedded_MBSS_terminate.c $(START_DIR)/Embedded_MBSS.c $(START_DIR)/log2.c $(START_DIR)/fft.c $(START_DIR)/examples/main.c $(START_DIR)/Embedded_MBSS_emxutil.c

ALL_SRCS = $(SRCS)

###########################################################################
## OBJECTS
###########################################################################

OBJS = rt_nonfinite.c.o rtGetNaN.c.o rtGetInf.c.o Embedded_MBSS_data.c.o Embedded_MBSS_initialize.c.o Embedded_MBSS_terminate.c.o Embedded_MBSS.c.o log2.c.o fft.c.o main.c.o Embedded_MBSS_emxutil.c.o

ALL_OBJS = $(OBJS)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = 

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = 

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CFLAGS += $(CFLAGS_BASIC)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CPPFLAGS += $(CPPFLAGS_BASIC)

###########################################################################
## INLINED COMMANDS
###########################################################################


ALL_DEPS:=$(patsubst %.o,%.dep,$(ALL_OBJS))
all:




-include codertarget_assembly_flags.mk
-include ../codertarget_assembly_flags.mk
-include ../../codertarget_assembly_flags.mk
-include $(ALL_DEPS)


###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build buildobj clean info prebuild download execute


all : build
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


buildobj : prebuild $(OBJS) $(PREBUILT_OBJS)
	@echo "### Successfully generated all binary outputs."


prebuild : 


download : $(PRODUCT)
	@echo "### Invoking postbuild tool "Download" ..."
	$(DOWNLOAD) $(DOWNLOAD_FLAGS)
	@echo "### Done invoking postbuild tool."


execute : download
	@echo "### Invoking postbuild tool "Execute" ..."
	$(EXECUTE) $(EXECUTE_FLAGS)
	@echo "### Done invoking postbuild tool."


###########################################################################
## FINAL TARGET
###########################################################################

#-------------------------------------------
# Create a standalone executable            
#-------------------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS)
	@echo "### Creating standalone executable "$(PRODUCT)" ..."
	$(LD) $(LDFLAGS) -o $(PRODUCT) $(OBJS) $(SYSTEM_LIBS) $(TOOLCHAIN_LIBS)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.c.o : %.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : %.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.pp.o : %.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(RELATIVE_PATH_TO_ANCHOR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.pp.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(START_DIR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.pp.o : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : T:/SBU/Thesis/Codes/Matlab/MBSS/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : T:/SBU/Thesis/Codes/Matlab/MBSS/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.pp.o : T:/SBU/Thesis/Codes/Matlab/MBSS/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(START_DIR)/examples/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(START_DIR)/examples/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.pp.o : $(START_DIR)/examples/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.c.o : $(MATLAB_ROOT)/rtw/c/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.s.o : $(MATLAB_ROOT)/rtw/c/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.pp.o : $(MATLAB_ROOT)/rtw/c/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rt_nonfinite.c.o : $(START_DIR)/rt_nonfinite.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rtGetNaN.c.o : $(START_DIR)/rtGetNaN.c
	$(CC) $(CFLAGS) -o "$@" "$<"


rtGetInf.c.o : $(START_DIR)/rtGetInf.c
	$(CC) $(CFLAGS) -o "$@" "$<"


Embedded_MBSS_data.c.o : $(START_DIR)/Embedded_MBSS_data.c
	$(CC) $(CFLAGS) -o "$@" "$<"


Embedded_MBSS_initialize.c.o : $(START_DIR)/Embedded_MBSS_initialize.c
	$(CC) $(CFLAGS) -o "$@" "$<"


Embedded_MBSS_terminate.c.o : $(START_DIR)/Embedded_MBSS_terminate.c
	$(CC) $(CFLAGS) -o "$@" "$<"


Embedded_MBSS.c.o : $(START_DIR)/Embedded_MBSS.c
	$(CC) $(CFLAGS) -o "$@" "$<"


log2.c.o : $(START_DIR)/log2.c
	$(CC) $(CFLAGS) -o "$@" "$<"


fft.c.o : $(START_DIR)/fft.c
	$(CC) $(CFLAGS) -o "$@" "$<"


main.c.o : $(START_DIR)/examples/main.c
	$(CC) $(CFLAGS) -o "$@" "$<"


Embedded_MBSS_emxutil.c.o : $(START_DIR)/Embedded_MBSS_emxutil.c
	$(CC) $(CFLAGS) -o "$@" "$<"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### ASFLAGS = $(ASFLAGS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MEX_CFLAGS = $(MEX_CFLAGS)"
	@echo "### MEX_CPPFLAGS = $(MEX_CPPFLAGS)"
	@echo "### MEX_LDFLAGS = $(MEX_LDFLAGS)"
	@echo "### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)"
	@echo "### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)"
	@echo "### EXECUTE_FLAGS = $(EXECUTE_FLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files..."
	$(RM) $(subst /,\,$(PRODUCT))
	$(RM) $(subst /,\,$(ALL_OBJS))
	$(RM) *.c.dep
	$(RM) *.cpp.dep
	$(RM) *.s.dep
	$(ECHO) "### Deleted all derived files."


