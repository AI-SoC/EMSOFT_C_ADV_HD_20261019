#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"


IfxCpu_syncEvent g_cpuSyncEvent = 0;


#define H_P10_IOCR0 (*(volatile unsigned int*)0xF003B010)
#define H_P10_OUT   (*(volatile unsigned int*)0xF003B000)

#define P10_1_IDX 1
#define P10_2_IDX 2

#define PC1_IDX 11
#define PC2_IDX 19


void initLED() {
    H_P10_IOCR0 &= ~(0x1F << PC1_IDX); // P10_IOCR0.PC1 clear
    H_P10_IOCR0 |=   0x10 << PC1_IDX;  // P10_IOCR0.PC1 <= 2'b10000

    H_P10_IOCR0 &= ~(0x1F << PC2_IDX); // P10_IOCR0.PC2 clear
    H_P10_IOCR0 |=   0x10 << PC2_IDX;  // P10_IOCR0.PC2 <= 2'b10000
}


int core0_main(void)
{
    IfxCpu_enableInterrupts();
    
    /* !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdogs and service them periodically if it is required
     */
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());
    
    /* Wait for CPU sync event */
    IfxCpu_emitEvent(&g_cpuSyncEvent);
    IfxCpu_waitEvent(&g_cpuSyncEvent, 1);
    
    initLED();

    while(1)
    {
        // red led on/off toggle (P10.1 port drive 5V and 0V)
        for(int i=0; i<5000000; i++); // software delay


        H_P10_OUT ^= 0x1 << P10_1_IDX;


        // blue led on/off toggle (P10.2 port drive 5V and 0V)
        for(int i=0; i<5000000; i++); // software delay


        H_P10_OUT ^= 0x1 << P10_2_IDX;


    }
    return (1);
}

