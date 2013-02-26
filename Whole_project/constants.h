#ifndef __CONSTANT_H
#define __CONSTANT_H

#define DEBUG // comment this line to switch into production mode

/* PIN mapping define*/
#define         PIN_IO                  PORTEbits.RE9 /*equivalent to int2*/
#define         PIN_RST                 PORTEbits.RE8 /*equivalent to int1*/
#define         PIN_VCC                 PORTAbits.RA7
#define         PIN_DEBUG               LATAbits.LATA3

/* Ram allocated for the trace buffer*/
#define         DATA_SIZE                5000

/* Convention definition (3b / 3F)*/
#define         CONVENTION_DIRECTE             1
#define         CONVENTION_INVERSE             0

/* The protocol definition */
#define         PROTOCOL_T0                     0
#define         PROTOCOL_T1                     1

/* The etu value */
#define         NO_ETU_CHANGE                   0

/* The state descripbing the evolution of a transaction*/
#define         STATE_BEGINING              1
#define         STATE_FIRST_EDGE            2
#define         STATE_TS                    3
#define         STATE_T0                    4
#define         STATE_ATR                   5
#define         STATE_ATR_ETU               6
#define         STATE_PROCESSING            7
#define         STATE_TERMINATED            8
#define         STATE_RESET                 9
#define         STATE_ATR_CRC               10

/* The ATR offset*/
#define         ATR_TS_OFFSET               0
#define         ATR_T0_OFFSET               1

/*T0 offset*/
#define         T0_CLA_OFFSET                  0
#define         T0_INS_OFFSET                  1
#define         T0_P1_OFFSET                   2
#define         T0_P2_OFFSET                   3
#define         T0_P3_OFFSET                   4
#define         T0_DATA_OFFSET                 5


/*T1 offset*/
#define         T1_NAD_OFFSET                  0
#define         T1_PCB_OFFSET                  1
#define         T1_LEN_OFFSET                  2
#define         T1_DATA_OFFSET                 3

/* others */
#define         TERMINAL                       0
#define         CARD                           1

/* View */

#define         homeScreen_recordButton                 1
#define         recordScreen_backToHomeButton           2
#define         homeScreen_listTracesButton             3
#define         recordScreen_viewLastTracedButton       4
#define         analysisScreen_changeLevelButton        5
#define         listTracesScreen_listTracesScreen       6
#define         listTracesScreen_viewTraceNumberButton  7

#define         homeScreen_appWindow                    8
#define         recordScreen_recordWindows              9
#define         analysisScreen_analysisScreen           10
#define         listTracesScreen_tracesList             11

#define         currentlyRecordingScreen_currentlyRecordingScreen 12
#define         currentlyRecordingScreen_BTN_2                      13
#define         currentlyRecordingScreen_BTN_3  14

#define         NUM_GDD_SCREENS                         5

#define         HOME_SCREEN         0
#define         RECORD_SCREEN       1
#define         ANALYSIS_SCREEN     2
#define         LIST_TRACES_SCREEN  3

#define         CURRENTLY_RECORDING_SCREEN 4

#endif