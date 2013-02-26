
/*****************************************************************************
* Microchip Graphics Library
* Graphics Display Designer (GDD) Template
*****************************************************************************


* Dependencies:    See INCLUDES section below
* Processor:       PIC24F, PIC24H, dsPIC, PIC32
* Compiler:        MPLAB C30 V3.22, MPLAB C32 V1.05b
* Linker:          MPLAB LINK30, MPLAB LINK32
* Company:         Microchip Technology Incorporated
*
* Software License Agreement
*
* Copyright (c) 2010 Microchip Technology Inc.  All rights reserved.
* Microchip licenses to you the right to use, modify, copy and distribute
* Software only when embedded on a Microchip microcontroller or digital
* signal controller, which is integrated into your product or third party
* product (pursuant to the sublicense terms in the accompanying license
* agreement).
*
* You should refer to the license agreement accompanying this Software
* for additional information regarding your rights and obligations.
*
* SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY
* KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
* OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
* PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
* OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,


* BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
* DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
* INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
* COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
* CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
* OR OTHER SIMILAR COSTS.
*
* Author               Date        Comment
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*
*****************************************************************************/

#include "Graphics/Graphics.h"
#include "GDD_Screens.h"
#include "constants.h"

/***************************************************
* String literals used in the project
***************************************************/
const XCHAR homeScreen_appWindowtext[ ] = {'C','a','r','d','S','p','y',' ','V','0','.','1','b','\0'};

const XCHAR homeScreen_recordButtontext[ ] = {'R','e','c','o','r','d','\0'};
const XCHAR homeScreen_listTracesButtontext[ ] = {'T','r','a','c','e','s','\0'};
const XCHAR recordScreen_recordWindowstext[ ] = {'R','e','c','o','r','d','i','n','g',' ','M','e','n','u','\0'};
const XCHAR recordScreen_backToHomeButtontext[ ] = {'H','o','m','e','\0'};
const XCHAR recordScreen_viewLastTraceButtontext[ ] = {'V','i','e','w','\0'};
const XCHAR analysisScreen_analysisScreentext[ ] = {'A','n','a','l','y','s','i','s','\0'};
const XCHAR analysisScreen_changeLevelButtontext[ ] = {'L','e','v','e','l','\0'};

const XCHAR listTracesScreen_listTracesScreentext[ ] = {'T','r','a','c','e','s',' ','M','e','n','u','\0'};
const XCHAR listTracesScreen_tracesListtext[ ] = {'R','e','c','o','r','d',' ','1','\n','R','e','c','o','r','d',' ','2','\n','R','e','c','o','r','d',' ','3','\n','R','e','c','o','r','d',' ','4',
                                                    'R','e','c','o','r','d',' ','1','\n','R','e','c','o','r','d',' ','2','\n','R','e','c','o','r','d',' ','3','\n','R','e','c','o','r','d',' ','4',
                                                    'R','e','c','o','r','d',' ','1','\n','R','e','c','o','r','d',' ','2','\n','R','e','c','o','r','d',' ','3','\n','R','e','c','o','r','d',' ','4','\0'};

const XCHAR listTracesScreen_viewTraceNumberButtontext[ ] = {'V','i','e','w','\0'};
const XCHAR homeScreen_OTE_4text[ ] = {'H','o','m','e','\0'};
const XCHAR listTracesScreen_OTE_18text[ ] = {'S','e','l','e','c','t',' ','t','r','a','c','e',' ',':','\0'};

const XCHAR currentlyRecordingScreen_currentlyRecordingScreentext[ ] = {'R','e','c','o','r','d','i','n','g',' ','M','e','n','u','\0'};
const XCHAR currentlyRecordingScreen_BTN_2text[ ] = {'V','i','e','w','\0'};
const XCHAR currentlyRecordingScreen_BTN_3text[ ] = {'H','o','m','e','\0'};
const XCHAR currentlyRecordingScreen_OTE_4text[ ] = {'R','e','c','o','r','d',' ','i','n',' ','p','r','o','g','r','e','s','s','\0'};

/***************************************************
* Scheme Declarations
***************************************************/
GOL_SCHEME* defscheme;
GOL_SCHEME* cardSpyScheme;

/***************************************************
* Function and global Declarations
***************************************************/
void (*CreateFunctionArray[NUM_GDD_SCREENS])();
void (*CreatePrimitivesFunctionArray[NUM_GDD_SCREENS])();
WORD currentGDDDemoScreenIndex;
static BYTE update = 0;
static BYTE updateGPL = 0;


/***************************************************
* Function       : GDDDemoCreateFirstScreen
* Parameters     : none
* Return         : none
* Description    : Creates the first screen
***************************************************/
void GDDDemoCreateFirstScreen(void)
{
    currentGDDDemoScreenIndex = HOME_SCREEN;
    update = 1;
    (*CreateFunctionArray[currentGDDDemoScreenIndex])();
}

void GDDSetScreen(int screen) {
    currentGDDDemoScreenIndex = screen;
    update = 1;
}

/***************************************************
* Function       : GDDDemoGOLDrawCallback
* Parameters     : none
* Return         : none
* Description    : Callback to do the actual drawing of widgets
***************************************************/
void GDDDemoGOLDrawCallback(void)
{
    if(updateGPL)
    {
        (*CreatePrimitivesFunctionArray[currentGDDDemoScreenIndex])();
        updateGPL = 0;
    }

    if(update)
    {
        (*CreateFunctionArray[currentGDDDemoScreenIndex])();
        if(CreatePrimitivesFunctionArray[currentGDDDemoScreenIndex] != NULL)
        {
            updateGPL = 1;
        }
        update = 0;
    }
}


/***************************************************
* Function       : CreateError
* Parameters     : none
* Return         : none
* Description    : Creates a Error screen
***************************************************/
void CreateError(char* string)
{
    // Blue Screen Error
    SetColor(119);
    ClearDevice();
    SetColor(-1);


    // Flash Error Message
    if(string == NULL)
        {OutTextXY(0, 0, "Runtime Error.");}
    else
        {OutTextXY(0,0, string);}
}

/***************************************************
* Function 	:    CreatehomeScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GOL widgets used in screen - homeScreen
***************************************************/
void CreatehomeScreen(void)
{
    GOLFree();
    SetColor(50712);
    ClearDevice();

    if(defscheme != NULL) free(defscheme);

    defscheme = GOLCreateScheme();
    defscheme->Color0 = RGBConvert(72, 140, 248);
    defscheme->Color1 = RGBConvert(248, 184, 72);
    defscheme->TextColor0 = RGBConvert(248, 184, 72);
    defscheme->TextColor1 = RGBConvert(0, 0, 248);
    defscheme->EmbossDkColor = RGBConvert(24, 0, 224);
    defscheme->EmbossLtColor = RGBConvert(168, 216, 232);
    defscheme->TextColorDisabled = RGBConvert(184, 184, 184);
    defscheme->ColorDisabled = RGBConvert(208, 224, 240);
    defscheme->CommonBkColor = RGBConvert(208, 236, 240);
    defscheme->pFont = (void*)&Gentium_Plain_0_0_22;


    if(cardSpyScheme != NULL) free(cardSpyScheme);

    cardSpyScheme = GOLCreateScheme();
    cardSpyScheme->Color0 = RGBConvert(48, 48, 48);
    cardSpyScheme->Color1 = RGBConvert(152, 152, 152);
    cardSpyScheme->TextColor0 = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColor1 = RGBConvert(96, 100, 96);
    cardSpyScheme->EmbossDkColor = RGBConvert(200, 204, 200);
    cardSpyScheme->EmbossLtColor = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColorDisabled = RGBConvert(184, 184, 184);
    cardSpyScheme->ColorDisabled = RGBConvert(200, 204, 248);
    cardSpyScheme->CommonBkColor = RGBConvert(248, 252, 248);
    cardSpyScheme->pFont = (void*)&Ubuntu_Bold_0_0_18;

    WINDOW *phomeScreen_appWindow;
    phomeScreen_appWindow=WndCreate(homeScreen_appWindow,0,0,319,239,24576,NULL, (XCHAR*)homeScreen_appWindowtext,cardSpyScheme);
    if(phomeScreen_appWindow==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *phomeScreen_recordButton;
    phomeScreen_recordButton=BtnCreate(homeScreen_recordButton,0,199,110,239,0,16384 , NULL , (XCHAR*)homeScreen_recordButtontext,cardSpyScheme);
    if(phomeScreen_recordButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *phomeScreen_listTracesButton;
    phomeScreen_listTracesButton=BtnCreate(homeScreen_listTracesButton,209,199,319,239,0,16386 , NULL , (XCHAR*)homeScreen_listTracesButtontext,cardSpyScheme);
    if(phomeScreen_listTracesButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }
}

/***************************************************
* Function 	:    CreaterecordScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GOL widgets used in screen - recordScreen
***************************************************/
void CreaterecordScreen(void)
{
    GOLFree();
    SetColor(50712);
    ClearDevice();

    if(defscheme != NULL) free(defscheme);

    defscheme = GOLCreateScheme();
    defscheme->Color0 = RGBConvert(72, 140, 248);
    defscheme->Color1 = RGBConvert(248, 184, 72);
    defscheme->TextColor0 = RGBConvert(248, 184, 72);
    defscheme->TextColor1 = RGBConvert(0, 0, 248);
    defscheme->EmbossDkColor = RGBConvert(24, 0, 224);
    defscheme->EmbossLtColor = RGBConvert(168, 216, 232);
    defscheme->TextColorDisabled = RGBConvert(184, 184, 184);
    defscheme->ColorDisabled = RGBConvert(208, 224, 240);
    defscheme->CommonBkColor = RGBConvert(208, 236, 240);
    defscheme->pFont = (void*)&Gentium_Plain_0_0_22;


    if(cardSpyScheme != NULL) free(cardSpyScheme);

    cardSpyScheme = GOLCreateScheme();
    cardSpyScheme->Color0 = RGBConvert(48, 48, 48);
    cardSpyScheme->Color1 = RGBConvert(152, 152, 152);
    cardSpyScheme->TextColor0 = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColor1 = RGBConvert(96, 100, 96);
    cardSpyScheme->EmbossDkColor = RGBConvert(200, 204, 200);
    cardSpyScheme->EmbossLtColor = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColorDisabled = RGBConvert(184, 184, 184);
    cardSpyScheme->ColorDisabled = RGBConvert(200, 204, 248);
    cardSpyScheme->CommonBkColor = RGBConvert(248, 252, 248);
    cardSpyScheme->pFont = (void*)&Ubuntu_Bold_0_0_18;

    WINDOW *precordScreen_recordWindows;
    precordScreen_recordWindows=WndCreate(recordScreen_recordWindows,0,0,319,239,24576,NULL, (XCHAR*)recordScreen_recordWindowstext,cardSpyScheme);
    if(precordScreen_recordWindows==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *precordScreen_backToHomeButton;
    precordScreen_backToHomeButton=BtnCreate(recordScreen_backToHomeButton,207,197,319,239,0,16384 , NULL , (XCHAR*)recordScreen_backToHomeButtontext,cardSpyScheme);
    if(precordScreen_backToHomeButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *precordScreen_viewLastTraceButton;
    precordScreen_viewLastTraceButton=BtnCreate(recordScreen_viewLastTracedButton,0,197,112,239,0,16384 , NULL , (XCHAR*)recordScreen_viewLastTraceButtontext,cardSpyScheme);
    if(precordScreen_viewLastTraceButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

}

/***************************************************
* Function 	:    CreateanalysisScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GOL widgets used in screen - analysisScreen
***************************************************/
void CreateanalysisScreen(void)
{
    GOLFree();
    SetColor(50712);
    ClearDevice();

    if(defscheme != NULL) free(defscheme);

    defscheme = GOLCreateScheme();
    defscheme->Color0 = RGBConvert(72, 140, 248);
    defscheme->Color1 = RGBConvert(248, 184, 72);
    defscheme->TextColor0 = RGBConvert(248, 184, 72);
    defscheme->TextColor1 = RGBConvert(0, 0, 248);
    defscheme->EmbossDkColor = RGBConvert(24, 0, 224);
    defscheme->EmbossLtColor = RGBConvert(168, 216, 232);
    defscheme->TextColorDisabled = RGBConvert(184, 184, 184);
    defscheme->ColorDisabled = RGBConvert(208, 224, 240);
    defscheme->CommonBkColor = RGBConvert(208, 236, 240);
    defscheme->pFont = (void*)&Gentium_Plain_0_0_22;


    if(cardSpyScheme != NULL) free(cardSpyScheme);

    cardSpyScheme = GOLCreateScheme();
    cardSpyScheme->Color0 = RGBConvert(48, 48, 48);
    cardSpyScheme->Color1 = RGBConvert(152, 152, 152);
    cardSpyScheme->TextColor0 = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColor1 = RGBConvert(96, 100, 96);
    cardSpyScheme->EmbossDkColor = RGBConvert(200, 204, 200);
    cardSpyScheme->EmbossLtColor = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColorDisabled = RGBConvert(184, 184, 184);
    cardSpyScheme->ColorDisabled = RGBConvert(200, 204, 248);
    cardSpyScheme->CommonBkColor = RGBConvert(248, 252, 248);
    cardSpyScheme->pFont = (void*)&Ubuntu_Bold_0_0_18;

    WINDOW *panalysisScreen_analysisScreen;
    panalysisScreen_analysisScreen=WndCreate(analysisScreen_analysisScreen,0,0,319,239,24576,NULL, (XCHAR*)analysisScreen_analysisScreentext,cardSpyScheme);
    if(panalysisScreen_analysisScreen==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    LISTBOX *plistTracesScreen_tracesList;
    plistTracesScreen_tracesList=LbCreate(listTracesScreen_tracesList,0,0,319,200,16392,(XCHAR*)listTracesScreen_tracesListtext,cardSpyScheme);
    if(plistTracesScreen_tracesList==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *panalysisScreen_changeLevelButton;
    panalysisScreen_changeLevelButton=BtnCreate(analysisScreen_changeLevelButton,207,197,319,239,0,16386 , NULL , (XCHAR*)analysisScreen_changeLevelButtontext,cardSpyScheme);
    if(panalysisScreen_changeLevelButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *panalysisScreen_replaceWithListTracesButton;
    panalysisScreen_replaceWithListTracesButton=BtnCreate(recordScreen_backToHomeButton,0,197,112,239,0,16384 , NULL , (XCHAR*)recordScreen_backToHomeButtontext,cardSpyScheme);
    if(panalysisScreen_replaceWithListTracesButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

}

/***************************************************
* Function 	:    CreatelistTracesScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GOL widgets used in screen - listTracesScreen
***************************************************/
void CreatelistTracesScreen(void)
{
    GOLFree();
    SetColor(50712);
    ClearDevice();

    if(defscheme != NULL) free(defscheme);

    defscheme = GOLCreateScheme();
    defscheme->Color0 = RGBConvert(72, 140, 248);
    defscheme->Color1 = RGBConvert(248, 184, 72);
    defscheme->TextColor0 = RGBConvert(248, 184, 72);
    defscheme->TextColor1 = RGBConvert(0, 0, 248);
    defscheme->EmbossDkColor = RGBConvert(24, 0, 224);
    defscheme->EmbossLtColor = RGBConvert(168, 216, 232);
    defscheme->TextColorDisabled = RGBConvert(184, 184, 184);
    defscheme->ColorDisabled = RGBConvert(208, 224, 240);
    defscheme->CommonBkColor = RGBConvert(208, 236, 240);
    defscheme->pFont = (void*)&Gentium_Plain_0_0_22;


    if(cardSpyScheme != NULL) free(cardSpyScheme);

    cardSpyScheme = GOLCreateScheme();
    cardSpyScheme->Color0 = RGBConvert(48, 48, 48);
    cardSpyScheme->Color1 = RGBConvert(152, 152, 152);
    cardSpyScheme->TextColor0 = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColor1 = RGBConvert(96, 100, 96);
    cardSpyScheme->EmbossDkColor = RGBConvert(200, 204, 200);
    cardSpyScheme->EmbossLtColor = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColorDisabled = RGBConvert(184, 184, 184);
    cardSpyScheme->ColorDisabled = RGBConvert(200, 204, 248);
    cardSpyScheme->CommonBkColor = RGBConvert(248, 252, 248);
    cardSpyScheme->pFont = (void*)&Ubuntu_Bold_0_0_18;

    WINDOW *plistTracesScreen_listTracesScreen;
    plistTracesScreen_listTracesScreen=WndCreate(listTracesScreen_listTracesScreen,0,0,319,239,24576,NULL, (XCHAR*)listTracesScreen_listTracesScreentext,cardSpyScheme);
    if(plistTracesScreen_listTracesScreen==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    LISTBOX *plistTracesScreen_tracesList;
    plistTracesScreen_tracesList=LbCreate(listTracesScreen_tracesList,147,54,302,174,16392,(XCHAR*)listTracesScreen_tracesListtext,cardSpyScheme);
    if(plistTracesScreen_tracesList==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *plistTracesScreen_replaceWithBackToHomeButton;
    plistTracesScreen_replaceWithBackToHomeButton=BtnCreate(recordScreen_backToHomeButton ,207,197,319,239,0,16384 , NULL , (XCHAR*)recordScreen_backToHomeButtontext,cardSpyScheme);
    if(plistTracesScreen_replaceWithBackToHomeButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *plistTracesScreen_viewTraceNumberButton;
    plistTracesScreen_viewTraceNumberButton=BtnCreate(listTracesScreen_viewTraceNumberButton,0,197,112,239,0,16384 , NULL , (XCHAR*)listTracesScreen_viewTraceNumberButtontext,cardSpyScheme);
    if(plistTracesScreen_viewTraceNumberButton==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

}

/***************************************************
* Function 	:    CreatecurrentlyRecordingScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GOL widgets used in screen - currentlyRecordingScreen
***************************************************/
void CreatecurrentlyRecordingScreen(void)
{
    GOLFree();
    SetColor(50712);
    ClearDevice();

    if(defscheme != NULL) free(defscheme);

    defscheme = GOLCreateScheme();
    defscheme->Color0 = RGBConvert(72, 140, 248);
    defscheme->Color1 = RGBConvert(248, 184, 72);
    defscheme->TextColor0 = RGBConvert(248, 184, 72);
    defscheme->TextColor1 = RGBConvert(0, 0, 248);
    defscheme->EmbossDkColor = RGBConvert(24, 0, 224);
    defscheme->EmbossLtColor = RGBConvert(168, 216, 232);
    defscheme->TextColorDisabled = RGBConvert(184, 184, 184);
    defscheme->ColorDisabled = RGBConvert(208, 224, 240);
    defscheme->CommonBkColor = RGBConvert(208, 236, 240);
    defscheme->pFont = (void*)&Gentium_Plain_0_0_22;


    if(cardSpyScheme != NULL) free(cardSpyScheme);

    cardSpyScheme = GOLCreateScheme();
    cardSpyScheme->Color0 = RGBConvert(48, 48, 48);
    cardSpyScheme->Color1 = RGBConvert(152, 152, 152);
    cardSpyScheme->TextColor0 = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColor1 = RGBConvert(96, 100, 96);
    cardSpyScheme->EmbossDkColor = RGBConvert(200, 204, 200);
    cardSpyScheme->EmbossLtColor = RGBConvert(200, 204, 200);
    cardSpyScheme->TextColorDisabled = RGBConvert(184, 184, 184);
    cardSpyScheme->ColorDisabled = RGBConvert(200, 204, 248);
    cardSpyScheme->CommonBkColor = RGBConvert(248, 252, 248);
    cardSpyScheme->pFont = (void*)&Ubuntu_Bold_0_0_18;

    WINDOW *pcurrentlyRecordingScreen_currentlyRecordingScreen;
    pcurrentlyRecordingScreen_currentlyRecordingScreen=WndCreate(currentlyRecordingScreen_currentlyRecordingScreen,0,0,319,239,24576,NULL, (XCHAR*)currentlyRecordingScreen_currentlyRecordingScreentext,cardSpyScheme);
    if(pcurrentlyRecordingScreen_currentlyRecordingScreen==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *pcurrentlyRecordingScreen_BTN_2;
    pcurrentlyRecordingScreen_BTN_2=BtnCreate(currentlyRecordingScreen_BTN_2,0,195,110,235,0,16386 , NULL , (XCHAR*)currentlyRecordingScreen_BTN_2text,cardSpyScheme);
    if(pcurrentlyRecordingScreen_BTN_2==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

    BUTTON *pcurrentlyRecordingScreen_BTN_3;
    pcurrentlyRecordingScreen_BTN_3=BtnCreate(currentlyRecordingScreen_BTN_3,205,195,315,235,0,16386 , NULL , (XCHAR*)currentlyRecordingScreen_BTN_3text,cardSpyScheme);
    if(pcurrentlyRecordingScreen_BTN_3==NULL)
    {
        CreateError(0);
        while(1); //Fatal Error, Check for memory leak or heap size
    }

}

/***************************************************
* Function 	:    CreatePrimitivesForhomeScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GPL widgets used in screen - homeScreen
***************************************************/
void CreatePrimitivesForhomeScreen(void)
{
    SetLineType(0);
    SetLineThickness(0);
    SetColor(12678);
    SetFont((void*)&Gentium_Plain_0_0_22);
    while(!OutTextXY(130,127,(XCHAR*)homeScreen_OTE_4text));
}


/***************************************************
* Function 	:    CreatePrimitivesForlistTracesScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GPL widgets used in screen - listTracesScreen
***************************************************/
void CreatePrimitivesForlistTracesScreen(void)
{
    SetLineType(0);
    SetLineThickness(0);
    SetColor(12678);
    SetFont((void*)&Gentium_Plain_0_0_22);
    while(!OutTextXY(17,54,(XCHAR*)listTracesScreen_OTE_18text));
}

/***************************************************
* Function 	:    CreatePrimitivesForcurrentlyRecordingScreen
* Parameters 	:    none
* Return 	:    none
* Description	:    Creates GPL widgets used in screen - currentlyRecordingScreen
***************************************************/
void CreatePrimitivesForcurrentlyRecordingScreen(void)
{
    SetLineType(0);
    SetLineThickness(0);
    SetColor(12678);
    SetFont((void*)&Gentium_Plain_0_0_22);
    while(!OutTextXY(57,84,(XCHAR*)currentlyRecordingScreen_OTE_4text));
}


/***************************************************
* Function       : CreateFunctionArray
* Parameters     : none
* Return         : none
* Description    : Creates a array of GOL function pointers
***************************************************/
void (*CreateFunctionArray[NUM_GDD_SCREENS])(void)=

{
    &CreatehomeScreen,
    &CreaterecordScreen,
    &CreateanalysisScreen,
    &CreatelistTracesScreen,
    &CreatecurrentlyRecordingScreen,

};


/***************************************************
* Function       : CreatePrimitivesFunctionArray
* Parameters     : none
* Return         : none
* Description    : Creates a array of GPL function pointers
***************************************************/
void (*CreatePrimitivesFunctionArray[NUM_GDD_SCREENS])(void)=

{
    &CreatePrimitivesForhomeScreen,
    NULL,
    NULL,
    &CreatePrimitivesForlistTracesScreen,
    &CreatePrimitivesForcurrentlyRecordingScreen,
};

