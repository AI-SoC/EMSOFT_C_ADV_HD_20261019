
#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include <stdio.h>

IfxCpu_syncEvent g_cpuSyncEvent = 0;

// memory initialization
void init_mem(char* start_addr, unsigned int len, unsigned char data) {
    for(unsigned int i=0; i<len; i++) {
        *(start_addr+i) = data;
    }
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
     

    int a = 100;
    int b = -1;
    int c = a + b;

    printf("a is %d @ 0x%p\n", a, &a);
    printf("b is %d @ 0x%p\n", b, &b);
    printf("c is %d @ 0x%p\n", c, &c);


    // 주소값을 어떤 변수에 담아보자
    // 이제 p라는 변수는 주소를 담고 있는 포인터 변수이다.
    int* p = &a;

    // 주소를 이용하여 접근해보자!
    *p = 12;
    printf("a is %d @ 0x%p\n", *p, p);
    // a에 값을 직접 쓰지 않았는데도, p 주소에 의해 간접적으로 바뀜
    printf("a is %d @ 0x%p\n", a, &a);

    // 좀더 물리적인 표현은 아래와 같다
    // *(p) = 0x12345678
    // p자리에 a의 주소를 대치해보자!
    *((int*)0x700195F0) = 0x12345678;
    // 이렇게 해도 변수 a영역에 값을 쓰는 효과를 봄.

    // 이제 물리 주소를 define을 이용하여 의미있게 표현
    // ADC의 샘플링 결과가 만약 0x700195F0 주소에 저장된다면
    // 아래와 같이 접근하면된다.
    #define ADC_DATA *((int*)0x700195F0)
    ADC_DATA = 0xFFBBCCDD;


    // 멀티 바이트 접근(read/write)
    // 아래 4바이트 쓰기는 1바이트 4번의 쓰기와 같다.
    //   1byte char타입으로 4번 접근.
    // *((int*)0x700195F0) = 0xEE78CF5A;
    // little endian 규격으로 멀티바이트 데이타 저장함을 기억하자!
    *((char*)0x700195F0) = 0x5A;
    *((char*)0x700195F1) = 0xCF;
    *((char*)0x700195F2) = 0x78;
    *((char*)0x700195F3) = 0xEE;

    // 특정 영역에 있는 1바이트를 읽어볼수도 있다.
    char k = *((char*)0x700195F3);


    init_mem((char*)&a, 100, 0xFF);

    while(1)
    {
    }
    return (1);
}
