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
uchar* recordTrace(int* size);