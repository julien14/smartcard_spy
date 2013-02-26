#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-PIC32_795_LCC_SK_INT_QVGAv1.mk)" "nbproject/Makefile-local-PIC32_795_LCC_SK_INT_QVGAv1.mk"
include nbproject/Makefile-local-PIC32_795_LCC_SK_INT_QVGAv1.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC32_795_LCC_SK_INT_QVGAv1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ${OBJECTDIR}/_ext/1919882987/TCON_Custom.o ${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o ${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ${OBJECTDIR}/_ext/1919882987/drvTFT002.o ${OBJECTDIR}/_ext/1919882987/HIT1270.o ${OBJECTDIR}/_ext/1919882987/HX8347.o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ${OBJECTDIR}/_ext/1919882987/SSD1339.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/ST7529.o ${OBJECTDIR}/_ext/1919882987/UC1610.o ${OBJECTDIR}/_ext/1472/traceManager.o ${OBJECTDIR}/_ext/1472/uartFunctions.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Palette.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/RoundDial.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ${OBJECTDIR}/_ext/803622919/TextEntry.o ${OBJECTDIR}/_ext/1472/stateManager.o ${OBJECTDIR}/_ext/1472/bufferManager.o ${OBJECTDIR}/protocolAnalyzer.o ${OBJECTDIR}/_ext/1472/exceptions.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/GDD_Resource.o ${OBJECTDIR}/_ext/1472/GDD_Screens.o ${OBJECTDIR}/_ext/1472/Main.o ${OBJECTDIR}/_ext/1472/FSIO.o ${OBJECTDIR}/_ext/1472/SD-SPI.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d ${OBJECTDIR}/_ext/1687970324/Beep.o.d ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d ${OBJECTDIR}/_ext/1687970324/cpld.o.d ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d ${OBJECTDIR}/_ext/1919882987/TCON_Custom.o.d ${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o.d ${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o.d ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d ${OBJECTDIR}/_ext/1919882987/drvTFT002.o.d ${OBJECTDIR}/_ext/1919882987/HIT1270.o.d ${OBJECTDIR}/_ext/1919882987/HX8347.o.d ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d ${OBJECTDIR}/_ext/1919882987/SSD1339.o.d ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d ${OBJECTDIR}/_ext/1919882987/ST7529.o.d ${OBJECTDIR}/_ext/1919882987/UC1610.o.d ${OBJECTDIR}/_ext/1472/traceManager.o.d ${OBJECTDIR}/_ext/1472/uartFunctions.o.d ${OBJECTDIR}/_ext/803622919/GOL.o.d ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d ${OBJECTDIR}/_ext/803622919/Palette.o.d ${OBJECTDIR}/_ext/803622919/Primitive.o.d ${OBJECTDIR}/_ext/803622919/Button.o.d ${OBJECTDIR}/_ext/803622919/CheckBox.o.d ${OBJECTDIR}/_ext/803622919/Meter.o.d ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d ${OBJECTDIR}/_ext/803622919/Chart.o.d ${OBJECTDIR}/_ext/803622919/RadioButton.o.d ${OBJECTDIR}/_ext/803622919/ListBox.o.d ${OBJECTDIR}/_ext/803622919/GroupBox.o.d ${OBJECTDIR}/_ext/803622919/EditBox.o.d ${OBJECTDIR}/_ext/803622919/Window.o.d ${OBJECTDIR}/_ext/803622919/Slider.o.d ${OBJECTDIR}/_ext/803622919/StaticText.o.d ${OBJECTDIR}/_ext/803622919/RoundDial.o.d ${OBJECTDIR}/_ext/803622919/Picture.o.d ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d ${OBJECTDIR}/_ext/803622919/TextEntry.o.d ${OBJECTDIR}/_ext/1472/stateManager.o.d ${OBJECTDIR}/_ext/1472/bufferManager.o.d ${OBJECTDIR}/protocolAnalyzer.o.d ${OBJECTDIR}/_ext/1472/exceptions.o.d ${OBJECTDIR}/_ext/1472/interrupts.o.d ${OBJECTDIR}/_ext/1472/GDD_Resource.o.d ${OBJECTDIR}/_ext/1472/GDD_Screens.o.d ${OBJECTDIR}/_ext/1472/Main.o.d ${OBJECTDIR}/_ext/1472/FSIO.o.d ${OBJECTDIR}/_ext/1472/SD-SPI.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ${OBJECTDIR}/_ext/1919882987/TCON_Custom.o ${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o ${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ${OBJECTDIR}/_ext/1919882987/drvTFT002.o ${OBJECTDIR}/_ext/1919882987/HIT1270.o ${OBJECTDIR}/_ext/1919882987/HX8347.o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ${OBJECTDIR}/_ext/1919882987/SSD1339.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1919882987/ST7529.o ${OBJECTDIR}/_ext/1919882987/UC1610.o ${OBJECTDIR}/_ext/1472/traceManager.o ${OBJECTDIR}/_ext/1472/uartFunctions.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Palette.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/RoundDial.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ${OBJECTDIR}/_ext/803622919/TextEntry.o ${OBJECTDIR}/_ext/1472/stateManager.o ${OBJECTDIR}/_ext/1472/bufferManager.o ${OBJECTDIR}/protocolAnalyzer.o ${OBJECTDIR}/_ext/1472/exceptions.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/GDD_Resource.o ${OBJECTDIR}/_ext/1472/GDD_Screens.o ${OBJECTDIR}/_ext/1472/Main.o ${OBJECTDIR}/_ext/1472/FSIO.o ${OBJECTDIR}/_ext/1472/SD-SPI.o


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
	${MAKE}  -f nbproject/Makefile-PIC32_795_LCC_SK_INT_QVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
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
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o "../../../Board Support Package/TouchScreenAR1020.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/Beep.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/Beep.o.d" -o ${OBJECTDIR}/_ext/1687970324/Beep.o "../../../Board Support Package/Beep.c"  
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39LF400.o: ../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o "../../../Board Support Package/SST39LF400.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o: ../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d" -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o "../../../Board Support Package/MCHP25LC256.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o: ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_Custom.o: ../../../Microchip/Graphics/Drivers/TCON_Custom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_Custom.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_Custom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_Custom.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_Custom.o ../../../Microchip/Graphics/Drivers/TCON_Custom.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o: ../../../Microchip/Graphics/Drivers/TCON_HX8238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o ../../../Microchip/Graphics/Drivers/TCON_HX8238.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o: ../../../Microchip/Graphics/Drivers/TCON_HX8257.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o ../../../Microchip/Graphics/Drivers/TCON_HX8257.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d" -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
	
${OBJECTDIR}/_ext/1919882987/drvTFT002.o: ../../../Microchip/Graphics/Drivers/drvTFT002.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT002.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/drvTFT002.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/drvTFT002.o.d" -o ${OBJECTDIR}/_ext/1919882987/drvTFT002.o ../../../Microchip/Graphics/Drivers/drvTFT002.c  
	
${OBJECTDIR}/_ext/1919882987/HIT1270.o: ../../../Microchip/Graphics/Drivers/HIT1270.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/HIT1270.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/HIT1270.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/HIT1270.o.d" -o ${OBJECTDIR}/_ext/1919882987/HIT1270.o ../../../Microchip/Graphics/Drivers/HIT1270.c  
	
${OBJECTDIR}/_ext/1919882987/HX8347.o: ../../../Microchip/Graphics/Drivers/HX8347.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/HX8347.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/HX8347.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/HX8347.o.d" -o ${OBJECTDIR}/_ext/1919882987/HX8347.o ../../../Microchip/Graphics/Drivers/HX8347.c  
	
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
	
${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o: ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" -o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1339.o: ../../../Microchip/Graphics/Drivers/SSD1339.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1339.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1339.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1339.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1339.o ../../../Microchip/Graphics/Drivers/SSD1339.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/ST7529.o: ../../../Microchip/Graphics/Drivers/ST7529.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/ST7529.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/ST7529.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/ST7529.o.d" -o ${OBJECTDIR}/_ext/1919882987/ST7529.o ../../../Microchip/Graphics/Drivers/ST7529.c  
	
${OBJECTDIR}/_ext/1919882987/UC1610.o: ../../../Microchip/Graphics/Drivers/UC1610.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/UC1610.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/UC1610.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/UC1610.o.d" -o ${OBJECTDIR}/_ext/1919882987/UC1610.o ../../../Microchip/Graphics/Drivers/UC1610.c  
	
${OBJECTDIR}/_ext/1472/traceManager.o: ../traceManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/traceManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/traceManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/traceManager.o.d" -o ${OBJECTDIR}/_ext/1472/traceManager.o ../traceManager.c  
	
${OBJECTDIR}/_ext/1472/uartFunctions.o: ../uartFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uartFunctions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uartFunctions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/uartFunctions.o.d" -o ${OBJECTDIR}/_ext/1472/uartFunctions.o ../uartFunctions.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/Palette.o: ../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Palette.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Palette.o.d" -o ${OBJECTDIR}/_ext/803622919/Palette.o ../../../Microchip/Graphics/Palette.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
	
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Meter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Meter.o.d" -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
	
${OBJECTDIR}/_ext/803622919/DigitalMeter.o: ../../../Microchip/Graphics/DigitalMeter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d" -o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ../../../Microchip/Graphics/DigitalMeter.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Window.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Window.o.d" -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/ProgressBar.o: ../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ProgressBar.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ProgressBar.o.d" -o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ../../../Microchip/Graphics/ProgressBar.c  
	
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
	
${OBJECTDIR}/_ext/1472/stateManager.o: ../stateManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/stateManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/stateManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/stateManager.o.d" -o ${OBJECTDIR}/_ext/1472/stateManager.o ../stateManager.c  
	
${OBJECTDIR}/_ext/1472/bufferManager.o: ../bufferManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/bufferManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bufferManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/bufferManager.o.d" -o ${OBJECTDIR}/_ext/1472/bufferManager.o ../bufferManager.c  
	
${OBJECTDIR}/protocolAnalyzer.o: protocolAnalyzer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/protocolAnalyzer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/protocolAnalyzer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/protocolAnalyzer.o.d" -o ${OBJECTDIR}/protocolAnalyzer.o protocolAnalyzer.c  
	
${OBJECTDIR}/_ext/1472/exceptions.o: ../exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/exceptions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/exceptions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/exceptions.o.d" -o ${OBJECTDIR}/_ext/1472/exceptions.o ../exceptions.c  
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/interrupts.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d" -o ${OBJECTDIR}/_ext/1472/interrupts.o ../interrupts.c  
	
${OBJECTDIR}/_ext/1472/GDD_Resource.o: ../GDD_Resource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GDD_Resource.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GDD_Resource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GDD_Resource.o.d" -o ${OBJECTDIR}/_ext/1472/GDD_Resource.o ../GDD_Resource.c  
	
${OBJECTDIR}/_ext/1472/GDD_Screens.o: ../GDD_Screens.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GDD_Screens.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GDD_Screens.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GDD_Screens.o.d" -o ${OBJECTDIR}/_ext/1472/GDD_Screens.o ../GDD_Screens.c  
	
${OBJECTDIR}/_ext/1472/Main.o: ../Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Main.o.d" -o ${OBJECTDIR}/_ext/1472/Main.o ../Main.c  
	
${OBJECTDIR}/_ext/1472/FSIO.o: ../FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/FSIO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/FSIO.o.d" -o ${OBJECTDIR}/_ext/1472/FSIO.o ../FSIO.c  
	
${OBJECTDIR}/_ext/1472/SD-SPI.o: ../SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SD-SPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SD-SPI.o.d" -o ${OBJECTDIR}/_ext/1472/SD-SPI.o ../SD-SPI.c  
	
else
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o "../../../Board Support Package/TouchScreen.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o "../../../Board Support Package/TouchScreenAR1020.c"  
	
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d" -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o "../../../Board Support Package/TouchScreenResistive.c"  
	
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/Beep.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/Beep.o.d" -o ${OBJECTDIR}/_ext/1687970324/Beep.o "../../../Board Support Package/Beep.c"  
	
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o "../../../Board Support Package/SST25VF016.c"  
	
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/cpld.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/cpld.o.d" -o ${OBJECTDIR}/_ext/1687970324/cpld.o "../../../Board Support Package/cpld.c"  
	
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o "../../../Board Support Package/drv_spi.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39LF400.o: ../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o "../../../Board Support Package/SST39LF400.c"  
	
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d" -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o "../../../Board Support Package/SST39VF040.c"  
	
${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o: ../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	@${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d" -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o "../../../Board Support Package/MCHP25LC256.c"  
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d" -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
	
${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o: ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o.d" -o ${OBJECTDIR}/_ext/1919882987/mchpGfxLCC.o ../../../Microchip/Graphics/Drivers/mchpGfxLCC.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_Custom.o: ../../../Microchip/Graphics/Drivers/TCON_Custom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_Custom.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_Custom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_Custom.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_Custom.o ../../../Microchip/Graphics/Drivers/TCON_Custom.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o: ../../../Microchip/Graphics/Drivers/TCON_HX8238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_HX8238.o ../../../Microchip/Graphics/Drivers/TCON_HX8238.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o: ../../../Microchip/Graphics/Drivers/TCON_HX8257.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_HX8257.o ../../../Microchip/Graphics/Drivers/TCON_HX8257.c  
	
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d" -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
	
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d" -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
	
${OBJECTDIR}/_ext/1919882987/drvTFT002.o: ../../../Microchip/Graphics/Drivers/drvTFT002.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT002.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/drvTFT002.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/drvTFT002.o.d" -o ${OBJECTDIR}/_ext/1919882987/drvTFT002.o ../../../Microchip/Graphics/Drivers/drvTFT002.c  
	
${OBJECTDIR}/_ext/1919882987/HIT1270.o: ../../../Microchip/Graphics/Drivers/HIT1270.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/HIT1270.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/HIT1270.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/HIT1270.o.d" -o ${OBJECTDIR}/_ext/1919882987/HIT1270.o ../../../Microchip/Graphics/Drivers/HIT1270.c  
	
${OBJECTDIR}/_ext/1919882987/HX8347.o: ../../../Microchip/Graphics/Drivers/HX8347.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/HX8347.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/HX8347.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/HX8347.o.d" -o ${OBJECTDIR}/_ext/1919882987/HX8347.o ../../../Microchip/Graphics/Drivers/HX8347.c  
	
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/S1D13517.o.d" -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
	
${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o: ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o.d" -o ${OBJECTDIR}/_ext/1919882987/SH1101A_SSD1303.o ../../../Microchip/Graphics/Drivers/SH1101A_SSD1303.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1339.o: ../../../Microchip/Graphics/Drivers/SSD1339.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1339.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1339.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1339.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1339.o ../../../Microchip/Graphics/Drivers/SSD1339.c  
	
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/SSD1926.o.d" -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
	
${OBJECTDIR}/_ext/1919882987/ST7529.o: ../../../Microchip/Graphics/Drivers/ST7529.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/ST7529.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/ST7529.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/ST7529.o.d" -o ${OBJECTDIR}/_ext/1919882987/ST7529.o ../../../Microchip/Graphics/Drivers/ST7529.c  
	
${OBJECTDIR}/_ext/1919882987/UC1610.o: ../../../Microchip/Graphics/Drivers/UC1610.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	@${RM} ${OBJECTDIR}/_ext/1919882987/UC1610.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1919882987/UC1610.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1919882987/UC1610.o.d" -o ${OBJECTDIR}/_ext/1919882987/UC1610.o ../../../Microchip/Graphics/Drivers/UC1610.c  
	
${OBJECTDIR}/_ext/1472/traceManager.o: ../traceManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/traceManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/traceManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/traceManager.o.d" -o ${OBJECTDIR}/_ext/1472/traceManager.o ../traceManager.c  
	
${OBJECTDIR}/_ext/1472/uartFunctions.o: ../uartFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uartFunctions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uartFunctions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/uartFunctions.o.d" -o ${OBJECTDIR}/_ext/1472/uartFunctions.o ../uartFunctions.c  
	
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOL.o.d" -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
	
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
	
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d" -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
	
${OBJECTDIR}/_ext/803622919/Palette.o: ../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Palette.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Palette.o.d" -o ${OBJECTDIR}/_ext/803622919/Palette.o ../../../Microchip/Graphics/Palette.c  
	
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Primitive.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Primitive.o.d" -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
	
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Button.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Button.o.d" -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
	
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/CheckBox.o.d" -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
	
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Meter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Meter.o.d" -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
	
${OBJECTDIR}/_ext/803622919/DigitalMeter.o: ../../../Microchip/Graphics/DigitalMeter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d" -o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ../../../Microchip/Graphics/DigitalMeter.c  
	
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Chart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Chart.o.d" -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
	
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RadioButton.o.d" -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
	
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ListBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ListBox.o.d" -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
	
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/GroupBox.o.d" -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
	
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/EditBox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/EditBox.o.d" -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
	
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Window.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Window.o.d" -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
	
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Slider.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Slider.o.d" -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
	
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/StaticText.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/StaticText.o.d" -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
	
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/RoundDial.o.d" -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
	
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/Picture.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/Picture.o.d" -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
	
${OBJECTDIR}/_ext/803622919/ProgressBar.o: ../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/ProgressBar.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/ProgressBar.o.d" -o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ../../../Microchip/Graphics/ProgressBar.c  
	
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/803622919 
	@${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/803622919/TextEntry.o.d" -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
	
${OBJECTDIR}/_ext/1472/stateManager.o: ../stateManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/stateManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/stateManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/stateManager.o.d" -o ${OBJECTDIR}/_ext/1472/stateManager.o ../stateManager.c  
	
${OBJECTDIR}/_ext/1472/bufferManager.o: ../bufferManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/bufferManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/bufferManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/bufferManager.o.d" -o ${OBJECTDIR}/_ext/1472/bufferManager.o ../bufferManager.c  
	
${OBJECTDIR}/protocolAnalyzer.o: protocolAnalyzer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/protocolAnalyzer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/protocolAnalyzer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/protocolAnalyzer.o.d" -o ${OBJECTDIR}/protocolAnalyzer.o protocolAnalyzer.c  
	
${OBJECTDIR}/_ext/1472/exceptions.o: ../exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/exceptions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/exceptions.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/exceptions.o.d" -o ${OBJECTDIR}/_ext/1472/exceptions.o ../exceptions.c  
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/interrupts.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d" -o ${OBJECTDIR}/_ext/1472/interrupts.o ../interrupts.c  
	
${OBJECTDIR}/_ext/1472/GDD_Resource.o: ../GDD_Resource.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GDD_Resource.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GDD_Resource.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GDD_Resource.o.d" -o ${OBJECTDIR}/_ext/1472/GDD_Resource.o ../GDD_Resource.c  
	
${OBJECTDIR}/_ext/1472/GDD_Screens.o: ../GDD_Screens.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GDD_Screens.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GDD_Screens.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GDD_Screens.o.d" -o ${OBJECTDIR}/_ext/1472/GDD_Screens.o ../GDD_Screens.c  
	
${OBJECTDIR}/_ext/1472/Main.o: ../Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Main.o.d" -o ${OBJECTDIR}/_ext/1472/Main.o ../Main.c  
	
${OBJECTDIR}/_ext/1472/FSIO.o: ../FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/FSIO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/FSIO.o.d" -o ${OBJECTDIR}/_ext/1472/FSIO.o ../FSIO.c  
	
${OBJECTDIR}/_ext/1472/SD-SPI.o: ../SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SD-SPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_LCC_PIC_SK_INT_QVGAv1 -I"../../../Board Support Package" -I"../../../Microchip/Include" -I"../" -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SD-SPI.o.d" -o ${OBJECTDIR}/_ext/1472/SD-SPI.o ../SD-SPI.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=3000,--report-mem "-mperipheral-libs" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=3000,--report-mem "-mperipheral-libs"
	${MP_CC_DIR}/pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC32_795_LCC_SK_INT_QVGAv1
	${RM} -r dist/PIC32_795_LCC_SK_INT_QVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
