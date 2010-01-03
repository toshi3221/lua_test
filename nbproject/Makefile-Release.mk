#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc.exe
CCC=g++.exe
CXX=g++.exe
FC=
AS=as.exe

# Macros
CND_PLATFORM=Cygwin-Windows
CND_CONF=Release
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_map.o \
	${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_to.o \
	${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_push.o \
	${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_event.o \
	${OBJECTDIR}/tolua_glue/shop_glue.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_is.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-Release.mk dist/Release/Cygwin-Windows/cbind_test.exe

dist/Release/Cygwin-Windows/cbind_test.exe: ${OBJECTFILES}
	${MKDIR} -p dist/Release/Cygwin-Windows
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cbind_test ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_map.o: nbproject/Makefile-${CND_CONF}.mk ../../tolua++-1.0.93/src/lib/tolua_map.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib
	${RM} $@.d
	$(COMPILE.c) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_map.o ../../tolua++-1.0.93/src/lib/tolua_map.c

${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_to.o: nbproject/Makefile-${CND_CONF}.mk ../../tolua++-1.0.93/src/lib/tolua_to.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib
	${RM} $@.d
	$(COMPILE.c) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_to.o ../../tolua++-1.0.93/src/lib/tolua_to.c

${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_push.o: nbproject/Makefile-${CND_CONF}.mk ../../tolua++-1.0.93/src/lib/tolua_push.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib
	${RM} $@.d
	$(COMPILE.c) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_push.o ../../tolua++-1.0.93/src/lib/tolua_push.c

${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_event.o: nbproject/Makefile-${CND_CONF}.mk ../../tolua++-1.0.93/src/lib/tolua_event.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib
	${RM} $@.d
	$(COMPILE.c) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_event.o ../../tolua++-1.0.93/src/lib/tolua_event.c

${OBJECTDIR}/tolua_glue/shop_glue.o: nbproject/Makefile-${CND_CONF}.mk tolua_glue/shop_glue.cpp 
	${MKDIR} -p ${OBJECTDIR}/tolua_glue
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/tolua_glue/shop_glue.o tolua_glue/shop_glue.cpp

${OBJECTDIR}/main.o: nbproject/Makefile-${CND_CONF}.mk main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_is.o: nbproject/Makefile-${CND_CONF}.mk ../../tolua++-1.0.93/src/lib/tolua_is.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib
	${RM} $@.d
	$(COMPILE.c) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/_DOTDOT/_DOTDOT/tolua++-1.0.93/src/lib/tolua_is.o ../../tolua++-1.0.93/src/lib/tolua_is.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Release
	${RM} dist/Release/Cygwin-Windows/cbind_test.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
