/******************************************************************************/
/* User Level #define Macros                                                  */
/******************************************************************************/

/* TODO Application specific user parameters used in user.c may go here */

/******************************************************************************/
/* User Function Prototypes                                                    /
/******************************************************************************/


#include "definition.h"

/* CardParameters struct bitfields for the data analysis*/
typedef struct {
    unsigned protocol : 1;
    unsigned convention : 1;
    unsigned warmAtrOffset : 8;
}CardParameters;

/**
 * initialize the parameters and the interupt function
 */
void InitApp(void);         /* I/O and Peripheral Initialization */

/**
 * Record a trace, this is a blocking function
 */
void recordTrace();

/**
 * Recover the trace number recordNumber on the sd Disk and sed it back
 *
 * @param recordNumber the record number to getBack
 * @param buffer the pointer on the char[] where to store the adress of the buffer
 * @param warmAtrOffset the pointeur in which to store the warmAtrOffset.
 *          store 0 if there is no warmAtr
 * @return the size of the trace in byte
 */
int getTrace(uint recordNumber, uchar **buffer, uint *warmAtrOffset);