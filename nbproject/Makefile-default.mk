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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=Microchip/TCPIP_Stack/Announce.c Microchip/TCPIP_Stack/ARP.c Microchip/TCPIP_Stack/DHCP.c Microchip/TCPIP_Stack/ETH97J60.c Microchip/TCPIP_Stack/Hashes.c Microchip/TCPIP_Stack/Helpers.c Microchip/TCPIP_Stack/HTTP2.c Microchip/TCPIP_Stack/ICMP.c Microchip/TCPIP_Stack/IP.c Microchip/TCPIP_Stack/MPFS2.c Microchip/TCPIP_Stack/SPIFlash.c Microchip/TCPIP_Stack/StackTsk.c Microchip/TCPIP_Stack/TCP.c Microchip/TCPIP_Stack/Tick.c Microchip/TCPIP_Stack/UDP.c MainSuky.c PingDemo.c MODBUSTCPServer.c CustomHTTPApp.c GenericTCPServer.c SMTPDemo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1 ${OBJECTDIR}/MainSuky.p1 ${OBJECTDIR}/PingDemo.p1 ${OBJECTDIR}/MODBUSTCPServer.p1 ${OBJECTDIR}/CustomHTTPApp.p1 ${OBJECTDIR}/GenericTCPServer.p1 ${OBJECTDIR}/SMTPDemo.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1.d ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1.d ${OBJECTDIR}/MainSuky.p1.d ${OBJECTDIR}/PingDemo.p1.d ${OBJECTDIR}/MODBUSTCPServer.p1.d ${OBJECTDIR}/CustomHTTPApp.p1.d ${OBJECTDIR}/GenericTCPServer.p1.d ${OBJECTDIR}/SMTPDemo.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1 ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1 ${OBJECTDIR}/MainSuky.p1 ${OBJECTDIR}/PingDemo.p1 ${OBJECTDIR}/MODBUSTCPServer.p1 ${OBJECTDIR}/CustomHTTPApp.p1 ${OBJECTDIR}/GenericTCPServer.p1 ${OBJECTDIR}/SMTPDemo.p1

# Source Files
SOURCEFILES=Microchip/TCPIP_Stack/Announce.c Microchip/TCPIP_Stack/ARP.c Microchip/TCPIP_Stack/DHCP.c Microchip/TCPIP_Stack/ETH97J60.c Microchip/TCPIP_Stack/Hashes.c Microchip/TCPIP_Stack/Helpers.c Microchip/TCPIP_Stack/HTTP2.c Microchip/TCPIP_Stack/ICMP.c Microchip/TCPIP_Stack/IP.c Microchip/TCPIP_Stack/MPFS2.c Microchip/TCPIP_Stack/SPIFlash.c Microchip/TCPIP_Stack/StackTsk.c Microchip/TCPIP_Stack/TCP.c Microchip/TCPIP_Stack/Tick.c Microchip/TCPIP_Stack/UDP.c MainSuky.c PingDemo.c MODBUSTCPServer.c CustomHTTPApp.c GenericTCPServer.c SMTPDemo.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F67J60
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1: Microchip/TCPIP_Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1 Microchip/TCPIP_Stack/Announce.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1: Microchip/TCPIP_Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1 Microchip/TCPIP_Stack/ARP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1: Microchip/TCPIP_Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1 Microchip/TCPIP_Stack/DHCP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1: Microchip/TCPIP_Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1 Microchip/TCPIP_Stack/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1: Microchip/TCPIP_Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1 Microchip/TCPIP_Stack/Hashes.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1: Microchip/TCPIP_Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1 Microchip/TCPIP_Stack/Helpers.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1: Microchip/TCPIP_Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1 Microchip/TCPIP_Stack/HTTP2.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.d ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1: Microchip/TCPIP_Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1 Microchip/TCPIP_Stack/ICMP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1: Microchip/TCPIP_Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1 Microchip/TCPIP_Stack/IP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1: Microchip/TCPIP_Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1 Microchip/TCPIP_Stack/MPFS2.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.d ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1: Microchip/TCPIP_Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1 Microchip/TCPIP_Stack/SPIFlash.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.d ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1: Microchip/TCPIP_Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1 Microchip/TCPIP_Stack/StackTsk.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.d ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1: Microchip/TCPIP_Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1 Microchip/TCPIP_Stack/TCP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1: Microchip/TCPIP_Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1 Microchip/TCPIP_Stack/Tick.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1: Microchip/TCPIP_Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1 Microchip/TCPIP_Stack/UDP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MainSuky.p1: MainSuky.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MainSuky.p1.d 
	@${RM} ${OBJECTDIR}/MainSuky.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MainSuky.p1 MainSuky.c 
	@-${MV} ${OBJECTDIR}/MainSuky.d ${OBJECTDIR}/MainSuky.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MainSuky.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PingDemo.p1: PingDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingDemo.p1.d 
	@${RM} ${OBJECTDIR}/PingDemo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/PingDemo.p1 PingDemo.c 
	@-${MV} ${OBJECTDIR}/PingDemo.d ${OBJECTDIR}/PingDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PingDemo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MODBUSTCPServer.p1: MODBUSTCPServer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MODBUSTCPServer.p1.d 
	@${RM} ${OBJECTDIR}/MODBUSTCPServer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MODBUSTCPServer.p1 MODBUSTCPServer.c 
	@-${MV} ${OBJECTDIR}/MODBUSTCPServer.d ${OBJECTDIR}/MODBUSTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MODBUSTCPServer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/CustomHTTPApp.p1: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.p1.d 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/CustomHTTPApp.p1 CustomHTTPApp.c 
	@-${MV} ${OBJECTDIR}/CustomHTTPApp.d ${OBJECTDIR}/CustomHTTPApp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/CustomHTTPApp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GenericTCPServer.p1: GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/GenericTCPServer.p1 GenericTCPServer.c 
	@-${MV} ${OBJECTDIR}/GenericTCPServer.d ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GenericTCPServer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SMTPDemo.p1: SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SMTPDemo.p1.d 
	@${RM} ${OBJECTDIR}/SMTPDemo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=icd3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/SMTPDemo.p1 SMTPDemo.c 
	@-${MV} ${OBJECTDIR}/SMTPDemo.d ${OBJECTDIR}/SMTPDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SMTPDemo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1: Microchip/TCPIP_Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1 Microchip/TCPIP_Stack/Announce.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Announce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1: Microchip/TCPIP_Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1 Microchip/TCPIP_Stack/ARP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/ARP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1: Microchip/TCPIP_Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1 Microchip/TCPIP_Stack/DHCP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/DHCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1: Microchip/TCPIP_Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1 Microchip/TCPIP_Stack/ETH97J60.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/ETH97J60.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1: Microchip/TCPIP_Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1 Microchip/TCPIP_Stack/Hashes.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Hashes.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1: Microchip/TCPIP_Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1 Microchip/TCPIP_Stack/Helpers.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Helpers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1: Microchip/TCPIP_Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1 Microchip/TCPIP_Stack/HTTP2.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.d ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/HTTP2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1: Microchip/TCPIP_Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1 Microchip/TCPIP_Stack/ICMP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/ICMP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1: Microchip/TCPIP_Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1 Microchip/TCPIP_Stack/IP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/IP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1: Microchip/TCPIP_Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1 Microchip/TCPIP_Stack/MPFS2.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.d ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/MPFS2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1: Microchip/TCPIP_Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1 Microchip/TCPIP_Stack/SPIFlash.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.d ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/SPIFlash.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1: Microchip/TCPIP_Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1 Microchip/TCPIP_Stack/StackTsk.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.d ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/StackTsk.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1: Microchip/TCPIP_Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1 Microchip/TCPIP_Stack/TCP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/TCP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1: Microchip/TCPIP_Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1 Microchip/TCPIP_Stack/Tick.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.d ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/Tick.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1: Microchip/TCPIP_Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Microchip/TCPIP_Stack" 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1 Microchip/TCPIP_Stack/UDP.c 
	@-${MV} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.d ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Microchip/TCPIP_Stack/UDP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MainSuky.p1: MainSuky.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MainSuky.p1.d 
	@${RM} ${OBJECTDIR}/MainSuky.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MainSuky.p1 MainSuky.c 
	@-${MV} ${OBJECTDIR}/MainSuky.d ${OBJECTDIR}/MainSuky.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MainSuky.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PingDemo.p1: PingDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingDemo.p1.d 
	@${RM} ${OBJECTDIR}/PingDemo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/PingDemo.p1 PingDemo.c 
	@-${MV} ${OBJECTDIR}/PingDemo.d ${OBJECTDIR}/PingDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PingDemo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MODBUSTCPServer.p1: MODBUSTCPServer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MODBUSTCPServer.p1.d 
	@${RM} ${OBJECTDIR}/MODBUSTCPServer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MODBUSTCPServer.p1 MODBUSTCPServer.c 
	@-${MV} ${OBJECTDIR}/MODBUSTCPServer.d ${OBJECTDIR}/MODBUSTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MODBUSTCPServer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/CustomHTTPApp.p1: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.p1.d 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/CustomHTTPApp.p1 CustomHTTPApp.c 
	@-${MV} ${OBJECTDIR}/CustomHTTPApp.d ${OBJECTDIR}/CustomHTTPApp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/CustomHTTPApp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GenericTCPServer.p1: GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/GenericTCPServer.p1 GenericTCPServer.c 
	@-${MV} ${OBJECTDIR}/GenericTCPServer.d ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GenericTCPServer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SMTPDemo.p1: SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SMTPDemo.p1.d 
	@${RM} ${OBJECTDIR}/SMTPDemo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/SMTPDemo.p1 SMTPDemo.c 
	@-${MV} ${OBJECTDIR}/SMTPDemo.d ${OBJECTDIR}/SMTPDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SMTPDemo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=icd3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"." -I"Microchip" -I"Microchip/Include" -I"Microchip/TCPIP_Stack" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Suky_Ethernet_XC8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
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
