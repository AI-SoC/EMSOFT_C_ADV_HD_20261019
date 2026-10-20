#include <stdio.h>

void mem_inspection(unsigned char* p, unsigned char size) {
    for(unsigned char i=0; i<size; i++ ) {
        printf("mem[%p] : 0x%02X\n", (p+i), *(p+i) );
        //p++;
    }
}

int main() {

    //  31                          0
    // -------------------------------
    // |          MODE               |
    // -------------------------------
    typedef struct {
        unsigned int mode;
    } ADC_MODE;

    // 31           16 15            0
    // -------------------------------
    // | cnfg1 | cnfg0 |     clk     |
    // --------------------------------
    typedef struct {
        unsigned short clk;
        unsigned char  cnfg0;
        unsigned char  cnfg1;
    } ADC_CLK;

    ADC_CLK a1; // 메모리 할당.
    a1.clk = 0x1234;
    a1.cnfg0 = 0x5A;
    a1.cnfg1 = 0xFF;

    mem_inspection((unsigned char*)&a1, 4);


    // 31           16 15            0
    // -------------------------------
    // |st|en|   -    |     data     |
    // -------------------------------
    typedef struct {
        unsigned short data;     // 16bit
        unsigned char  reserved; // 8bit
        unsigned char  en: 4;    // 4bit
        unsigned char  st: 4;    // 4bit
    } ADC_CNTL;

    ADC_CNTL ac1;
    ac1.data = 0x55AA;
    ac1.en   = 0xE;
    ac1.st   = 0x1;

    mem_inspection((unsigned char*)&ac1, 4);

    // 공용체 union
    //
    // 32비트 4바이트 메모리 영역을 아래 2가지 view.로 바라보자.
    //  31                          0
    // -------------------------------
    // |          mode               |
    // -------------------------------
    //
    //             또는
    //    
    // 31           16 15            0
    // -------------------------------
    // |st|en|   -    |     data     |
    // -------------------------------
    typedef union {
        ADC_MODE m;
        ADC_CNTL c;
    } ADC_R;

    ADC_R adc1;
    adc1.m.mode = 0x1200AABB;

    printf("clk : 0x%04X\n", adc1.c.data);
    printf("st  : 0x%1X\n" , adc1.c.st);
    printf("en  : 0x%1X\n" , adc1.c.en);

    return 0;

}
