#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=${DISTDIR}/uart_base.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=${DISTDIR}/uart_base.X.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../gpio_base/src/config/default/peripheral/can/plib_can0.c ../../gpio_base/src/config/default/peripheral/clock/plib_clock.c ../../gpio_base/src/config/default/peripheral/evsys/plib_evsys.c ../../gpio_base/src/config/default/peripheral/nvic/plib_nvic.c ../../gpio_base/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../../gpio_base/src/config/default/peripheral/port/plib_port.c ../../gpio_base/src/config/default/peripheral/systick/plib_systick.c ../../gpio_base/src/config/default/stdio/xc32_monitor.c ../../gpio_base/src/config/default/initialization.c ../../gpio_base/src/config/default/interrupts.c ../../gpio_base/src/config/default/exceptions.c ../../gpio_base/src/config/default/startup_xc32.c ../../gpio_base/src/config/default/libc_syscalls.c ../../gpio_base/src/main.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/main.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1851896287/plib_can0.o ${OBJECTDIR}/_ext/1556203101/plib_clock.o ${OBJECTDIR}/_ext/1558352587/plib_evsys.o ${OBJECTDIR}/_ext/1574557875/plib_nvic.o ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o ${OBJECTDIR}/_ext/1574611026/plib_port.o ${OBJECTDIR}/_ext/1740868487/plib_systick.o ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o ${OBJECTDIR}/_ext/1838118189/initialization.o ${OBJECTDIR}/_ext/1838118189/interrupts.o ${OBJECTDIR}/_ext/1838118189/exceptions.o ${OBJECTDIR}/_ext/1838118189/startup_xc32.o ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o ${OBJECTDIR}/_ext/741131894/main.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1851896287/plib_can0.o.d ${OBJECTDIR}/_ext/1556203101/plib_clock.o.d ${OBJECTDIR}/_ext/1558352587/plib_evsys.o.d ${OBJECTDIR}/_ext/1574557875/plib_nvic.o.d ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1574611026/plib_port.o.d ${OBJECTDIR}/_ext/1740868487/plib_systick.o.d ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o.d ${OBJECTDIR}/_ext/1838118189/initialization.o.d ${OBJECTDIR}/_ext/1838118189/interrupts.o.d ${OBJECTDIR}/_ext/1838118189/exceptions.o.d ${OBJECTDIR}/_ext/1838118189/startup_xc32.o.d ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o.d ${OBJECTDIR}/_ext/741131894/main.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1851896287/plib_can0.o ${OBJECTDIR}/_ext/1556203101/plib_clock.o ${OBJECTDIR}/_ext/1558352587/plib_evsys.o ${OBJECTDIR}/_ext/1574557875/plib_nvic.o ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o ${OBJECTDIR}/_ext/1574611026/plib_port.o ${OBJECTDIR}/_ext/1740868487/plib_systick.o ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o ${OBJECTDIR}/_ext/1838118189/initialization.o ${OBJECTDIR}/_ext/1838118189/interrupts.o ${OBJECTDIR}/_ext/1838118189/exceptions.o ${OBJECTDIR}/_ext/1838118189/startup_xc32.o ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o ${OBJECTDIR}/_ext/741131894/main.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o

# Source Files
SOURCEFILES=../../gpio_base/src/config/default/peripheral/can/plib_can0.c ../../gpio_base/src/config/default/peripheral/clock/plib_clock.c ../../gpio_base/src/config/default/peripheral/evsys/plib_evsys.c ../../gpio_base/src/config/default/peripheral/nvic/plib_nvic.c ../../gpio_base/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../../gpio_base/src/config/default/peripheral/port/plib_port.c ../../gpio_base/src/config/default/peripheral/systick/plib_systick.c ../../gpio_base/src/config/default/stdio/xc32_monitor.c ../../gpio_base/src/config/default/initialization.c ../../gpio_base/src/config/default/interrupts.c ../../gpio_base/src/config/default/exceptions.c ../../gpio_base/src/config/default/startup_xc32.c ../../gpio_base/src/config/default/libc_syscalls.c ../../gpio_base/src/main.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/main.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/uart_base.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1851896287/plib_can0.o: ../../gpio_base/src/config/default/peripheral/can/plib_can0.c  .generated_files/flags/default/b8ede9c55049d07470d01499236c06d8688b7f75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1851896287" 
	@${RM} ${OBJECTDIR}/_ext/1851896287/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1851896287/plib_can0.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1851896287/plib_can0.o.d" -o ${OBJECTDIR}/_ext/1851896287/plib_can0.o ../../gpio_base/src/config/default/peripheral/can/plib_can0.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1556203101/plib_clock.o: ../../gpio_base/src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/f5ee6d1477c23b832b5f53134ec6aa4224ae8c2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1556203101" 
	@${RM} ${OBJECTDIR}/_ext/1556203101/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1556203101/plib_clock.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1556203101/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1556203101/plib_clock.o ../../gpio_base/src/config/default/peripheral/clock/plib_clock.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1558352587/plib_evsys.o: ../../gpio_base/src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/656b963262db1c4d0b537588a9b8ddb8764ce2fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1558352587" 
	@${RM} ${OBJECTDIR}/_ext/1558352587/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558352587/plib_evsys.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1558352587/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1558352587/plib_evsys.o ../../gpio_base/src/config/default/peripheral/evsys/plib_evsys.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1574557875/plib_nvic.o: ../../gpio_base/src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/ff843acab6dea8ab1a55b9171c1e3ffe69dbeabf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1574557875" 
	@${RM} ${OBJECTDIR}/_ext/1574557875/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574557875/plib_nvic.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1574557875/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1574557875/plib_nvic.o ../../gpio_base/src/config/default/peripheral/nvic/plib_nvic.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o: ../../gpio_base/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/153730860733317d808668d678f6ffbc1db86547 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1975343585" 
	@${RM} ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o ../../gpio_base/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1574611026/plib_port.o: ../../gpio_base/src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/4c6386875da6b2557ddba7c06a364cb35c7e22d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1574611026" 
	@${RM} ${OBJECTDIR}/_ext/1574611026/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574611026/plib_port.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1574611026/plib_port.o.d" -o ${OBJECTDIR}/_ext/1574611026/plib_port.o ../../gpio_base/src/config/default/peripheral/port/plib_port.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1740868487/plib_systick.o: ../../gpio_base/src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/f2a9035324ce4e41edcc09e8097778e1dff4baaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1740868487" 
	@${RM} ${OBJECTDIR}/_ext/1740868487/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740868487/plib_systick.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1740868487/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1740868487/plib_systick.o ../../gpio_base/src/config/default/peripheral/systick/plib_systick.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1566919897/xc32_monitor.o: ../../gpio_base/src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/52caedc7f06ca3b54dc2eb92f8db78b4b0df87a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1566919897" 
	@${RM} ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1566919897/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o ../../gpio_base/src/config/default/stdio/xc32_monitor.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/initialization.o: ../../gpio_base/src/config/default/initialization.c  .generated_files/flags/default/df7e56df0da7257e351c7b47eee97fca828ce167 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/initialization.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/initialization.o.d" -o ${OBJECTDIR}/_ext/1838118189/initialization.o ../../gpio_base/src/config/default/initialization.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/interrupts.o: ../../gpio_base/src/config/default/interrupts.c  .generated_files/flags/default/11e07bda742b9cf1d89b44f34c1814870bb1cfe5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/interrupts.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/interrupts.o.d" -o ${OBJECTDIR}/_ext/1838118189/interrupts.o ../../gpio_base/src/config/default/interrupts.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/exceptions.o: ../../gpio_base/src/config/default/exceptions.c  .generated_files/flags/default/cd6a0c2455495cb1a6203f6300c7f393db8e88b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/exceptions.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/exceptions.o.d" -o ${OBJECTDIR}/_ext/1838118189/exceptions.o ../../gpio_base/src/config/default/exceptions.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/startup_xc32.o: ../../gpio_base/src/config/default/startup_xc32.c  .generated_files/flags/default/524a37e7d7e02e7b9e72af6e24b5391f02df248e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/startup_xc32.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1838118189/startup_xc32.o ../../gpio_base/src/config/default/startup_xc32.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/libc_syscalls.o: ../../gpio_base/src/config/default/libc_syscalls.c  .generated_files/flags/default/af6713545ffa8cb7c5a43ec17f14d6bd899a513 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o ../../gpio_base/src/config/default/libc_syscalls.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/741131894/main.o: ../../gpio_base/src/main.c  .generated_files/flags/default/9c62c480797123e76663da11cb101a9cf6fc694c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/741131894" 
	@${RM} ${OBJECTDIR}/_ext/741131894/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/741131894/main.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/741131894/main.o.d" -o ${OBJECTDIR}/_ext/741131894/main.o ../../gpio_base/src/main.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/37fbae22ad593d05e411777c0147ffb7da2d08fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/208e91c6519d4832bc7b792d99268ee615b32c88 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/1671c0d33305eb6c3bd3ecca87c9fe039f67a801 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/d3d371241c3242e1ba1f299cc035d8b4e03ce61b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/a2370642e8475d1606cea4fcfab32761028dccba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/6fb29163bc1c2b9862eb7538a8a4f10329e89d48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/bdabfdc2ba665696a5f61912556f9062fd2c06ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/d2db910b2e633d3e5007c6b6d99b40c8b4711571 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/e133c1505706218e0ad25f518194d9f8f2cf8c66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/925f91b261c8739d5a237b390d1240b241bc0e4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/575acce2bc47a21d58f67a8df4e46621d8c49388 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/6c5679e6c9d2fd43073ba7f3628d308dacb5b51e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/583c3a7145bde535c168bece05ec2f346d2d41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	 $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1851896287/plib_can0.o: ../../gpio_base/src/config/default/peripheral/can/plib_can0.c  .generated_files/flags/default/80b16a613a0bd9e84c9757853ec77047123729a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1851896287" 
	@${RM} ${OBJECTDIR}/_ext/1851896287/plib_can0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1851896287/plib_can0.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1851896287/plib_can0.o.d" -o ${OBJECTDIR}/_ext/1851896287/plib_can0.o ../../gpio_base/src/config/default/peripheral/can/plib_can0.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1556203101/plib_clock.o: ../../gpio_base/src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/c5d3165790db47d2934369968da118d9c259d6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1556203101" 
	@${RM} ${OBJECTDIR}/_ext/1556203101/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1556203101/plib_clock.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1556203101/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1556203101/plib_clock.o ../../gpio_base/src/config/default/peripheral/clock/plib_clock.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1558352587/plib_evsys.o: ../../gpio_base/src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/5272ba4ff8c2692eae159c229b3f6ea0a9a8bef5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1558352587" 
	@${RM} ${OBJECTDIR}/_ext/1558352587/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558352587/plib_evsys.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1558352587/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1558352587/plib_evsys.o ../../gpio_base/src/config/default/peripheral/evsys/plib_evsys.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1574557875/plib_nvic.o: ../../gpio_base/src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/7d4b2b4ed11c122e312a4859d6f93e0523a01940 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1574557875" 
	@${RM} ${OBJECTDIR}/_ext/1574557875/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574557875/plib_nvic.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1574557875/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1574557875/plib_nvic.o ../../gpio_base/src/config/default/peripheral/nvic/plib_nvic.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o: ../../gpio_base/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/59957999a21870ec2ce183e1db2e1a4a86750514 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1975343585" 
	@${RM} ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1975343585/plib_nvmctrl.o ../../gpio_base/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1574611026/plib_port.o: ../../gpio_base/src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/a171241d324f703ce835189b228035e7f5e47bd8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1574611026" 
	@${RM} ${OBJECTDIR}/_ext/1574611026/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574611026/plib_port.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1574611026/plib_port.o.d" -o ${OBJECTDIR}/_ext/1574611026/plib_port.o ../../gpio_base/src/config/default/peripheral/port/plib_port.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1740868487/plib_systick.o: ../../gpio_base/src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/316f3d505b6a5c5454cbd7f85db3275a9d3e46a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1740868487" 
	@${RM} ${OBJECTDIR}/_ext/1740868487/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740868487/plib_systick.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1740868487/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1740868487/plib_systick.o ../../gpio_base/src/config/default/peripheral/systick/plib_systick.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1566919897/xc32_monitor.o: ../../gpio_base/src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/176746a059c119e97fb761a8b5414233c5fc6b21 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1566919897" 
	@${RM} ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1566919897/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1566919897/xc32_monitor.o ../../gpio_base/src/config/default/stdio/xc32_monitor.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/initialization.o: ../../gpio_base/src/config/default/initialization.c  .generated_files/flags/default/e13973e0a2c116c7665b80eff1e31ae764401b36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/initialization.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/initialization.o.d" -o ${OBJECTDIR}/_ext/1838118189/initialization.o ../../gpio_base/src/config/default/initialization.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/interrupts.o: ../../gpio_base/src/config/default/interrupts.c  .generated_files/flags/default/e410f9885d8a2f8c427ffd80dc9eba2d1e35f3da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/interrupts.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/interrupts.o.d" -o ${OBJECTDIR}/_ext/1838118189/interrupts.o ../../gpio_base/src/config/default/interrupts.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/exceptions.o: ../../gpio_base/src/config/default/exceptions.c  .generated_files/flags/default/f6cfe292b570abc7d7cbc687b0e5d99c19ae0b29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/exceptions.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/exceptions.o.d" -o ${OBJECTDIR}/_ext/1838118189/exceptions.o ../../gpio_base/src/config/default/exceptions.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/startup_xc32.o: ../../gpio_base/src/config/default/startup_xc32.c  .generated_files/flags/default/7fbf717ffe337e1514bb4ccab914be11eee5aab5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/startup_xc32.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1838118189/startup_xc32.o ../../gpio_base/src/config/default/startup_xc32.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1838118189/libc_syscalls.o: ../../gpio_base/src/config/default/libc_syscalls.c  .generated_files/flags/default/be92faf13d5c9e58dd083639c5c22d5bf05b8cf8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1838118189" 
	@${RM} ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1838118189/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1838118189/libc_syscalls.o ../../gpio_base/src/config/default/libc_syscalls.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/741131894/main.o: ../../gpio_base/src/main.c  .generated_files/flags/default/41fc45d25493961b89a26b55a0963d09c83694a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/741131894" 
	@${RM} ${OBJECTDIR}/_ext/741131894/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/741131894/main.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/741131894/main.o.d" -o ${OBJECTDIR}/_ext/741131894/main.o ../../gpio_base/src/main.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/552df6c85b996c52ce52903835f461fc6025b702 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/87b5eb8da159c9d8d79d09a067c01ce0dcf1f3b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/26f975e3324ed6fda4fd570c9f689fe4c0ce085f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/7d060129d5c91fb0ed18064d3fcf3d57a8d6783f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/ba3c2743c713248be4fb84619f626b405aef569d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/9bb58d0994a770a7dc66449fd96b8f988fd21f29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/4dc95ffa4ac0c9fee6d3f7679d87be5d273e5d2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/ca6dc2c4d36376653d84bd49c5396b3d0548b2ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/4d927fdb6f886ec589777d8e3265c5d07f003d82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/dbd6d6a93192fadbfb4598c4b31b929cc18b023 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/7fce4fb5d1e3b38320b6c7f42eff14808f45e4b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/3714b7c39d0b4e1235cde411dde695b501e1bb9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/930d536f9323d5619d94ae6b137fa3e061514060 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	 $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216JH01048_DFP" -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -D=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/uart_base.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../gpio_base/src/config/default/PIC32CM1216JH01048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  r ${DISTDIR}/uart_base.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
${DISTDIR}/uart_base.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../gpio_base/src/config/default/PIC32CM1216JH01048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  r ${DISTDIR}/uart_base.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
