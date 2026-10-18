
out.elf:     file format elf32-littlearm


Disassembly of section .isr_vector:

08000000 <g_pfnVectors>:
 8000000:	20020000 	andcs	r0, r2, r0
 8000004:	0800038d 	stmdaeq	r0, {r0, r2, r3, r7, r8, r9}
	...
 8000058:	0800025d 	stmdaeq	r0, {r0, r2, r3, r4, r6, r9}
	...

Disassembly of section .text:

08000188 <clk>:
clk():
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:4
#include "STM32FDiscovery.h"
	
void clk(void)
{
 8000188:	b480      	push	{r7}
 800018a:	af00      	add	r7, sp, #0
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:5
	RCC_CR = 0;
 800018c:	4b31      	ldr	r3, [pc, #196]	; (8000254 <clk+0xcc>)
 800018e:	2200      	movs	r2, #0
 8000190:	601a      	str	r2, [r3, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:6
	RCC_PLLCFGR = 0;
 8000192:	4b30      	ldr	r3, [pc, #192]	; (8000254 <clk+0xcc>)
 8000194:	2200      	movs	r2, #0
 8000196:	605a      	str	r2, [r3, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:7
	RCC_CFGR = 0;
 8000198:	4b2e      	ldr	r3, [pc, #184]	; (8000254 <clk+0xcc>)
 800019a:	2200      	movs	r2, #0
 800019c:	609a      	str	r2, [r3, #8]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:9
		
	RCC_CR |= (1<<16); // HSE set
 800019e:	4b2d      	ldr	r3, [pc, #180]	; (8000254 <clk+0xcc>)
 80001a0:	681b      	ldr	r3, [r3, #0]
 80001a2:	4a2c      	ldr	r2, [pc, #176]	; (8000254 <clk+0xcc>)
 80001a4:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80001a8:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:10
	while( (RCC_CR & ( 1<<17) ) == 0 ); // wait until HSE ready
 80001aa:	bf00      	nop
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:10 (discriminator 1)
 80001ac:	4b29      	ldr	r3, [pc, #164]	; (8000254 <clk+0xcc>)
 80001ae:	681b      	ldr	r3, [r3, #0]
 80001b0:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80001b4:	2b00      	cmp	r3, #0
 80001b6:	d0f9      	beq.n	80001ac <clk+0x24>
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:12
	
	RCC_PLLCFGR |= 8;//0x00000008; // set PLLM
 80001b8:	4b26      	ldr	r3, [pc, #152]	; (8000254 <clk+0xcc>)
 80001ba:	685b      	ldr	r3, [r3, #4]
 80001bc:	4a25      	ldr	r2, [pc, #148]	; (8000254 <clk+0xcc>)
 80001be:	f043 0308 	orr.w	r3, r3, #8
 80001c2:	6053      	str	r3, [r2, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:13
	RCC_PLLCFGR |= (336<<6);//|= (336<<6); // 		set PLLN
 80001c4:	4b23      	ldr	r3, [pc, #140]	; (8000254 <clk+0xcc>)
 80001c6:	685b      	ldr	r3, [r3, #4]
 80001c8:	4a22      	ldr	r2, [pc, #136]	; (8000254 <clk+0xcc>)
 80001ca:	f443 43a8 	orr.w	r3, r3, #21504	; 0x5400
 80001ce:	6053      	str	r3, [r2, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:14
	RCC_PLLCFGR |= (0<<16); // set PLLP
 80001d0:	4b20      	ldr	r3, [pc, #128]	; (8000254 <clk+0xcc>)
 80001d2:	4a20      	ldr	r2, [pc, #128]	; (8000254 <clk+0xcc>)
 80001d4:	685b      	ldr	r3, [r3, #4]
 80001d6:	6053      	str	r3, [r2, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:15
	RCC_PLLCFGR |= (7<<24);//0x07000000; // set PLLQ
 80001d8:	4b1e      	ldr	r3, [pc, #120]	; (8000254 <clk+0xcc>)
 80001da:	685b      	ldr	r3, [r3, #4]
 80001dc:	4a1d      	ldr	r2, [pc, #116]	; (8000254 <clk+0xcc>)
 80001de:	f043 63e0 	orr.w	r3, r3, #117440512	; 0x7000000
 80001e2:	6053      	str	r3, [r2, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:17

	RCC_PLLCFGR |= (1<<22); // set PLL src HSE
 80001e4:	4b1b      	ldr	r3, [pc, #108]	; (8000254 <clk+0xcc>)
 80001e6:	685b      	ldr	r3, [r3, #4]
 80001e8:	4a1a      	ldr	r2, [pc, #104]	; (8000254 <clk+0xcc>)
 80001ea:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 80001ee:	6053      	str	r3, [r2, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:19

	RCC_CR |= (1<<24); // PLL ON
 80001f0:	4b18      	ldr	r3, [pc, #96]	; (8000254 <clk+0xcc>)
 80001f2:	681b      	ldr	r3, [r3, #0]
 80001f4:	4a17      	ldr	r2, [pc, #92]	; (8000254 <clk+0xcc>)
 80001f6:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80001fa:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:20
	while( (RCC_CR & (1<<25)) == 0); // wait until PLL ready
 80001fc:	bf00      	nop
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:20 (discriminator 1)
 80001fe:	4b15      	ldr	r3, [pc, #84]	; (8000254 <clk+0xcc>)
 8000200:	681b      	ldr	r3, [r3, #0]
 8000202:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000206:	2b00      	cmp	r3, #0
 8000208:	d0f9      	beq.n	80001fe <clk+0x76>
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:22
	
	FLASH_ACR |= 5;
 800020a:	4b13      	ldr	r3, [pc, #76]	; (8000258 <clk+0xd0>)
 800020c:	681b      	ldr	r3, [r3, #0]
 800020e:	4a12      	ldr	r2, [pc, #72]	; (8000258 <clk+0xd0>)
 8000210:	f043 0305 	orr.w	r3, r3, #5
 8000214:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:23
	RCC_CFGR |= 2; // set PLL to system clock
 8000216:	4b0f      	ldr	r3, [pc, #60]	; (8000254 <clk+0xcc>)
 8000218:	689b      	ldr	r3, [r3, #8]
 800021a:	4a0e      	ldr	r2, [pc, #56]	; (8000254 <clk+0xcc>)
 800021c:	f043 0302 	orr.w	r3, r3, #2
 8000220:	6093      	str	r3, [r2, #8]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:25
	
	while( (RCC_CFGR & (12) ) != 8); // wait until PLL ready
 8000222:	bf00      	nop
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:25 (discriminator 1)
 8000224:	4b0b      	ldr	r3, [pc, #44]	; (8000254 <clk+0xcc>)
 8000226:	689b      	ldr	r3, [r3, #8]
 8000228:	f003 030c 	and.w	r3, r3, #12
 800022c:	2b08      	cmp	r3, #8
 800022e:	d1f9      	bne.n	8000224 <clk+0x9c>
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:27
	
	RCC_CFGR |= (1<<12) | (1<<10); // set APB1 div 4
 8000230:	4b08      	ldr	r3, [pc, #32]	; (8000254 <clk+0xcc>)
 8000232:	689b      	ldr	r3, [r3, #8]
 8000234:	4a07      	ldr	r2, [pc, #28]	; (8000254 <clk+0xcc>)
 8000236:	f443 53a0 	orr.w	r3, r3, #5120	; 0x1400
 800023a:	6093      	str	r3, [r2, #8]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:28
	RCC_CFGR |= (1<<15); // set APB2 div2	
 800023c:	4b05      	ldr	r3, [pc, #20]	; (8000254 <clk+0xcc>)
 800023e:	689b      	ldr	r3, [r3, #8]
 8000240:	4a04      	ldr	r2, [pc, #16]	; (8000254 <clk+0xcc>)
 8000242:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000246:	6093      	str	r3, [r2, #8]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:29
}
 8000248:	bf00      	nop
 800024a:	46bd      	mov	sp, r7
 800024c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000250:	4770      	bx	lr
 8000252:	bf00      	nop
 8000254:	40023800 	andmi	r3, r2, r0, lsl #16
 8000258:	40023c00 	andmi	r3, r2, r0, lsl #24

0800025c <EXTI0_IRQHandler>:
EXTI0_IRQHandler():
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:31

void EXTI0_IRQHandler() {
 800025c:	b480      	push	{r7}
 800025e:	b083      	sub	sp, #12
 8000260:	af00      	add	r7, sp, #0
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:32
    volatile int a = 2;
 8000262:	2302      	movs	r3, #2
 8000264:	607b      	str	r3, [r7, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:35

    //GPIOD_ODR ^= 1 << 13;
    GPIOD_ODR ^= a;
 8000266:	687a      	ldr	r2, [r7, #4]
 8000268:	4b0e      	ldr	r3, [pc, #56]	; (80002a4 <EXTI0_IRQHandler+0x48>)
 800026a:	695b      	ldr	r3, [r3, #20]
 800026c:	4611      	mov	r1, r2
 800026e:	4a0d      	ldr	r2, [pc, #52]	; (80002a4 <EXTI0_IRQHandler+0x48>)
 8000270:	404b      	eors	r3, r1
 8000272:	6153      	str	r3, [r2, #20]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:36
    GPIOD_ODR ^= 1 << 14;
 8000274:	4b0b      	ldr	r3, [pc, #44]	; (80002a4 <EXTI0_IRQHandler+0x48>)
 8000276:	695b      	ldr	r3, [r3, #20]
 8000278:	4a0a      	ldr	r2, [pc, #40]	; (80002a4 <EXTI0_IRQHandler+0x48>)
 800027a:	f483 4380 	eor.w	r3, r3, #16384	; 0x4000
 800027e:	6153      	str	r3, [r2, #20]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:37
    GPIOD_ODR ^= 1 << 15;
 8000280:	4b08      	ldr	r3, [pc, #32]	; (80002a4 <EXTI0_IRQHandler+0x48>)
 8000282:	695b      	ldr	r3, [r3, #20]
 8000284:	4a07      	ldr	r2, [pc, #28]	; (80002a4 <EXTI0_IRQHandler+0x48>)
 8000286:	f483 4300 	eor.w	r3, r3, #32768	; 0x8000
 800028a:	6153      	str	r3, [r2, #20]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:39

    EXTI_PR |= 1<<0;    // clear pending bit for EXTI0
 800028c:	4b06      	ldr	r3, [pc, #24]	; (80002a8 <EXTI0_IRQHandler+0x4c>)
 800028e:	695b      	ldr	r3, [r3, #20]
 8000290:	4a05      	ldr	r2, [pc, #20]	; (80002a8 <EXTI0_IRQHandler+0x4c>)
 8000292:	f043 0301 	orr.w	r3, r3, #1
 8000296:	6153      	str	r3, [r2, #20]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:40
}
 8000298:	bf00      	nop
 800029a:	370c      	adds	r7, #12
 800029c:	46bd      	mov	sp, r7
 800029e:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002a2:	4770      	bx	lr
 80002a4:	40020c00 	andmi	r0, r2, r0, lsl #24
 80002a8:	40013c00 	andmi	r3, r1, r0, lsl #24

080002ac <main>:
main():
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:43

int main (void)
{
 80002ac:	b580      	push	{r7, lr}
 80002ae:	af00      	add	r7, sp, #0
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:44
	clk();
 80002b0:	f7ff ff6a 	bl	8000188 <clk>
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:46
	
	RCC_CFGR |= 0x04600000;
 80002b4:	4b2f      	ldr	r3, [pc, #188]	; (8000374 <main+0xc8>)
 80002b6:	689b      	ldr	r3, [r3, #8]
 80002b8:	4a2e      	ldr	r2, [pc, #184]	; (8000374 <main+0xc8>)
 80002ba:	f043 638c 	orr.w	r3, r3, #73400320	; 0x4600000
 80002be:	6093      	str	r3, [r2, #8]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:49

    /* PORT A */
	RCC_AHB1ENR  |= 1<<0; //RCC clock enable register	
 80002c0:	4b2c      	ldr	r3, [pc, #176]	; (8000374 <main+0xc8>)
 80002c2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80002c4:	4a2b      	ldr	r2, [pc, #172]	; (8000374 <main+0xc8>)
 80002c6:	f043 0301 	orr.w	r3, r3, #1
 80002ca:	6313      	str	r3, [r2, #48]	; 0x30
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:50
    GPIOA_MODER  |= 0<<0; // input mode
 80002cc:	4b2a      	ldr	r3, [pc, #168]	; (8000378 <main+0xcc>)
 80002ce:	4a2a      	ldr	r2, [pc, #168]	; (8000378 <main+0xcc>)
 80002d0:	681b      	ldr	r3, [r3, #0]
 80002d2:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:51
    GPIOA_OTYPER |= 0<<0; // output push-pull
 80002d4:	4b28      	ldr	r3, [pc, #160]	; (8000378 <main+0xcc>)
 80002d6:	4a28      	ldr	r2, [pc, #160]	; (8000378 <main+0xcc>)
 80002d8:	685b      	ldr	r3, [r3, #4]
 80002da:	6053      	str	r3, [r2, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:52
    GPIOA_PUPDR  |= 0<<0; // no pull-up, pull-down
 80002dc:	4b26      	ldr	r3, [pc, #152]	; (8000378 <main+0xcc>)
 80002de:	4a26      	ldr	r2, [pc, #152]	; (8000378 <main+0xcc>)
 80002e0:	68db      	ldr	r3, [r3, #12]
 80002e2:	60d3      	str	r3, [r2, #12]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:55

    /* button intr set */
    SYSCFG_EXTICR1  |= 0<<0; // EXTI0 connect to PA0
 80002e4:	4b25      	ldr	r3, [pc, #148]	; (800037c <main+0xd0>)
 80002e6:	4a25      	ldr	r2, [pc, #148]	; (800037c <main+0xd0>)
 80002e8:	689b      	ldr	r3, [r3, #8]
 80002ea:	6093      	str	r3, [r2, #8]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:56
    EXTI_IMR        |= 1<<0; // Mask EXTI0
 80002ec:	4b24      	ldr	r3, [pc, #144]	; (8000380 <main+0xd4>)
 80002ee:	681b      	ldr	r3, [r3, #0]
 80002f0:	4a23      	ldr	r2, [pc, #140]	; (8000380 <main+0xd4>)
 80002f2:	f043 0301 	orr.w	r3, r3, #1
 80002f6:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:57
    EXTI_RTSR       |= 1<<0; // rising edge trigger enable
 80002f8:	4b21      	ldr	r3, [pc, #132]	; (8000380 <main+0xd4>)
 80002fa:	689b      	ldr	r3, [r3, #8]
 80002fc:	4a20      	ldr	r2, [pc, #128]	; (8000380 <main+0xd4>)
 80002fe:	f043 0301 	orr.w	r3, r3, #1
 8000302:	6093      	str	r3, [r2, #8]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:58
    EXTI_FTSR       |= 0<<0; // falling edge trigger disable
 8000304:	4b1e      	ldr	r3, [pc, #120]	; (8000380 <main+0xd4>)
 8000306:	4a1e      	ldr	r2, [pc, #120]	; (8000380 <main+0xd4>)
 8000308:	68db      	ldr	r3, [r3, #12]
 800030a:	60d3      	str	r3, [r2, #12]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:59
    NVIC_ISER0      |= 1<<6; // enable EXTI0 interrupt
 800030c:	4b1d      	ldr	r3, [pc, #116]	; (8000384 <main+0xd8>)
 800030e:	681b      	ldr	r3, [r3, #0]
 8000310:	4a1c      	ldr	r2, [pc, #112]	; (8000384 <main+0xd8>)
 8000312:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8000316:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:62
	
	/* PORT D */
	RCC_AHB1ENR  |= 1<<3;		// PORTD enable
 8000318:	4b16      	ldr	r3, [pc, #88]	; (8000374 <main+0xc8>)
 800031a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800031c:	4a15      	ldr	r2, [pc, #84]	; (8000374 <main+0xc8>)
 800031e:	f043 0308 	orr.w	r3, r3, #8
 8000322:	6313      	str	r3, [r2, #48]	; 0x30
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:63
	GPIOD_MODER  |= 1<<24;		// PORTD 12 general output mode
 8000324:	4b18      	ldr	r3, [pc, #96]	; (8000388 <main+0xdc>)
 8000326:	681b      	ldr	r3, [r3, #0]
 8000328:	4a17      	ldr	r2, [pc, #92]	; (8000388 <main+0xdc>)
 800032a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800032e:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:64
	GPIOD_MODER  |= 1<<26;		// PORTD 13 general output mode
 8000330:	4b15      	ldr	r3, [pc, #84]	; (8000388 <main+0xdc>)
 8000332:	681b      	ldr	r3, [r3, #0]
 8000334:	4a14      	ldr	r2, [pc, #80]	; (8000388 <main+0xdc>)
 8000336:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 800033a:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:65
	GPIOD_MODER  |= 1<<28;		// PORTD 14 general output mode
 800033c:	4b12      	ldr	r3, [pc, #72]	; (8000388 <main+0xdc>)
 800033e:	681b      	ldr	r3, [r3, #0]
 8000340:	4a11      	ldr	r2, [pc, #68]	; (8000388 <main+0xdc>)
 8000342:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000346:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:66
	GPIOD_MODER  |= 1<<30;		// PORTD 15 general output mode
 8000348:	4b0f      	ldr	r3, [pc, #60]	; (8000388 <main+0xdc>)
 800034a:	681b      	ldr	r3, [r3, #0]
 800034c:	4a0e      	ldr	r2, [pc, #56]	; (8000388 <main+0xdc>)
 800034e:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
 8000352:	6013      	str	r3, [r2, #0]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:67
	GPIOD_OTYPER |= 0x00000000;
 8000354:	4b0c      	ldr	r3, [pc, #48]	; (8000388 <main+0xdc>)
 8000356:	4a0c      	ldr	r2, [pc, #48]	; (8000388 <main+0xdc>)
 8000358:	685b      	ldr	r3, [r3, #4]
 800035a:	6053      	str	r3, [r2, #4]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:68
	GPIOD_PUPDR	 |= 0x00000000;
 800035c:	4b0a      	ldr	r3, [pc, #40]	; (8000388 <main+0xdc>)
 800035e:	4a0a      	ldr	r2, [pc, #40]	; (8000388 <main+0xdc>)
 8000360:	68db      	ldr	r3, [r3, #12]
 8000362:	60d3      	str	r3, [r2, #12]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:70
	
	GPIOD_ODR |= 1<<12;
 8000364:	4b08      	ldr	r3, [pc, #32]	; (8000388 <main+0xdc>)
 8000366:	695b      	ldr	r3, [r3, #20]
 8000368:	4a07      	ldr	r2, [pc, #28]	; (8000388 <main+0xdc>)
 800036a:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 800036e:	6153      	str	r3, [r2, #20]
G:\OneDrive - knu.ac.kr\PROJECT\2018-09-08_JSKWON\09_lecture\2021-04-28_Embedded_System_Design\2_SRC\01_blink_int/main.c:72 (discriminator 1)

	while(1) {
 8000370:	e7fe      	b.n	8000370 <main+0xc4>
 8000372:	bf00      	nop
 8000374:	40023800 	andmi	r3, r2, r0, lsl #16
 8000378:	40020000 	andmi	r0, r2, r0
 800037c:	40013800 	andmi	r3, r1, r0, lsl #16
 8000380:	40013c00 	andmi	r3, r1, r0, lsl #24
 8000384:	e000e100 	and	lr, r0, r0, lsl #2
 8000388:	40020c00 	andmi	r0, r2, r0, lsl #24

0800038c <Reset_Handler>:
Reset_Handler():
 800038c:	2100      	movs	r1, #0
 800038e:	e003      	b.n	8000398 <LoopCopyDataInit>

08000390 <CopyDataInit>:
CopyDataInit():
 8000390:	4b09      	ldr	r3, [pc, #36]	; (80003b8 <LoopFillZerobss+0xc>)
 8000392:	585b      	ldr	r3, [r3, r1]
 8000394:	5043      	str	r3, [r0, r1]
 8000396:	3104      	adds	r1, #4

08000398 <LoopCopyDataInit>:
LoopCopyDataInit():
 8000398:	4808      	ldr	r0, [pc, #32]	; (80003bc <LoopFillZerobss+0x10>)
 800039a:	4b09      	ldr	r3, [pc, #36]	; (80003c0 <LoopFillZerobss+0x14>)
 800039c:	1842      	adds	r2, r0, r1
 800039e:	429a      	cmp	r2, r3
 80003a0:	d3f6      	bcc.n	8000390 <CopyDataInit>
 80003a2:	4a08      	ldr	r2, [pc, #32]	; (80003c4 <LoopFillZerobss+0x18>)
 80003a4:	e002      	b.n	80003ac <LoopFillZerobss>

080003a6 <FillZerobss>:
FillZerobss():
 80003a6:	2300      	movs	r3, #0
 80003a8:	6013      	str	r3, [r2, #0]
 80003aa:	3204      	adds	r2, #4

080003ac <LoopFillZerobss>:
LoopFillZerobss():
 80003ac:	4b06      	ldr	r3, [pc, #24]	; (80003c8 <LoopFillZerobss+0x1c>)
 80003ae:	429a      	cmp	r2, r3
 80003b0:	d3f9      	bcc.n	80003a6 <FillZerobss>
 80003b2:	f7ff ff7b 	bl	80002ac <main>
 80003b6:	03e40000 	mvneq	r0, #0
 80003ba:	00000800 	andeq	r0, r0, r0, lsl #16
 80003be:	00002000 	andeq	r2, r0, r0
 80003c2:	00002000 	andeq	r2, r0, r0
 80003c6:	00002000 	andeq	r2, r0, r0
 80003ca:	 	ldrblt	r2, [r8, #0]!

080003cc <_init>:
_init():
 80003cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80003ce:	bf00      	nop
 80003d0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80003d2:	bc08      	pop	{r3}
 80003d4:	469e      	mov	lr, r3
 80003d6:	4770      	bx	lr

080003d8 <_fini>:
_fini():
 80003d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80003da:	bf00      	nop
 80003dc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80003de:	bc08      	pop	{r3}
 80003e0:	469e      	mov	lr, r3
 80003e2:	4770      	bx	lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002f41 	andeq	r2, r0, r1, asr #30
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000025 	andeq	r0, r0, r5, lsr #32
  10:	2d453705 	stclcs	7, cr3, [r5, #-20]	; 0xffffffec
  14:	0d06004d 	stceq	0, cr0, [r6, #-308]	; 0xfffffecc
  18:	02094d07 	andeq	r4, r9, #448	; 0x1c0
  1c:	0412060a 	ldreq	r0, [r2], #-1546	; 0xfffff9f6
  20:	01150114 	tsteq	r5, r4, lsl r1
  24:	01180317 	tsteq	r8, r7, lsl r3
  28:	011b011a 	tsteq	fp, sl, lsl r1
  2c:	0122011c 			; <UNDEFINED> instruction: 0x0122011c

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <g_pfnVectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	206d7241 	rsbcs	r7, sp, r1, asr #4
  18:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  1c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  20:	6f725020 	svcvs	0x00725020
  24:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
  28:	2073726f 	rsbscs	r7, r3, pc, ror #4
  2c:	30322d38 	eorscc	r2, r2, r8, lsr sp
  30:	712d3831 			; <UNDEFINED> instruction: 0x712d3831
  34:	616d2d34 	cmnvs	sp, r4, lsr sp
  38:	29726f6a 	ldmdbcs	r2!, {r1, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
  3c:	322e3820 	eorcc	r3, lr, #32, 16	; 0x200000
  40:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
  44:	31383130 	teqcc	r8, r0, lsr r1
  48:	20333132 	eorscs	r3, r3, r2, lsr r1
  4c:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  50:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  54:	675b2029 	ldrbvs	r2, [fp, -r9, lsr #32]
  58:	382d6363 	stmdacc	sp!, {r0, r1, r5, r6, r8, r9, sp, lr}
  5c:	6172622d 	cmnvs	r2, sp, lsr #4
  60:	2068636e 	rsbcs	r6, r8, lr, ror #6
  64:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  68:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  6c:	37363220 	ldrcc	r3, [r6, -r0, lsr #4]!
  70:	5d343730 	ldcpl	7, cr3, [r4, #-192]!	; 0xffffff40
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000306 	andeq	r0, r0, r6, lsl #6
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000180f 	andeq	r1, r0, pc, lsl #16
  10:	00014d0c 	andeq	r4, r1, ip, lsl #26
  14:	002cfe00 	eoreq	pc, ip, r0, lsl #28
	...
  28:	02480200 	subeq	r0, r8, #0, 4
  2c:	011d1201 	tsteq	sp, r1, lsl #4
  30:	ea030000 	b	c0038 <g_pfnVectors-0x7f3ffc8>
  34:	02000027 	andeq	r0, r0, #39	; 0x27
  38:	01221302 			; <UNDEFINED> instruction: 0x01221302
  3c:	03000000 	movweq	r0, #0
  40:	00003165 	andeq	r3, r0, r5, ror #2
  44:	22130302 	andscs	r0, r3, #134217728	; 0x8000000
  48:	04000001 	streq	r0, [r0], #-1
  4c:	001fa403 	andseq	sl, pc, r3, lsl #8
  50:	13040200 	movwne	r0, #16896	; 0x4200
  54:	00000122 	andeq	r0, r0, r2, lsr #2
  58:	29660308 	stmdbcs	r6!, {r3, r8, r9}^
  5c:	05020000 	streq	r0, [r2, #-0]
  60:	00012213 	andeq	r2, r1, r3, lsl r2
  64:	72030c00 	andvc	r0, r3, #0, 24
  68:	02000022 	andeq	r0, r0, #34	; 0x22
  6c:	01221306 			; <UNDEFINED> instruction: 0x01221306
  70:	03100000 	tsteq	r0, #0
  74:	00002921 	andeq	r2, r0, r1, lsr #18
  78:	22130702 	andscs	r0, r3, #524288	; 0x80000
  7c:	14000001 	strne	r0, [r0], #-1
  80:	00292b03 	eoreq	r2, r9, r3, lsl #22
  84:	13080200 	movwne	r0, #33280	; 0x8200
  88:	00000122 	andeq	r0, r0, r2, lsr #2
  8c:	21530318 	cmpcs	r3, r8, lsl r3
  90:	09020000 	stmdbeq	r2, {}	; <UNPREDICTABLE>
  94:	00012213 	andeq	r2, r1, r3, lsl r2
  98:	5c031c00 	stcpl	12, cr1, [r3], {-0}
  9c:	02000029 	andeq	r0, r0, #41	; 0x29
  a0:	0122130a 			; <UNDEFINED> instruction: 0x0122130a
  a4:	03200000 	nopeq	{0}	; <UNPREDICTABLE>
  a8:	00000980 	andeq	r0, r0, r0, lsl #19
  ac:	22130b02 	andscs	r0, r3, #2048	; 0x800
  b0:	24000001 	strcs	r0, [r0], #-1
  b4:	00296f03 	eoreq	r6, r9, r3, lsl #30
  b8:	130c0200 	movwne	r0, #49664	; 0xc200
  bc:	00000122 	andeq	r0, r0, r2, lsr #2
  c0:	09c40328 	stmibeq	r4, {r3, r5, r8, r9}^
  c4:	0d020000 	stceq	0, cr0, [r2, #-0]
  c8:	00012213 	andeq	r2, r1, r3, lsl r2
  cc:	82032c00 	andhi	r2, r3, #0, 24
  d0:	02000014 	andeq	r0, r0, #20
  d4:	0122130e 			; <UNDEFINED> instruction: 0x0122130e
  d8:	03300000 	teqeq	r0, #0
  dc:	000009ce 	andeq	r0, r0, lr, asr #19
  e0:	22130f02 	andscs	r0, r3, #2, 30
  e4:	34000001 	strcc	r0, [r0], #-1
  e8:	0009d803 	andeq	sp, r9, r3, lsl #16
  ec:	13100200 	tstne	r0, #0, 4
  f0:	00000122 	andeq	r0, r0, r2, lsr #2
  f4:	17ec0338 			; <UNDEFINED> instruction: 0x17ec0338
  f8:	11020000 	mrsne	r0, (UNDEF: 2)
  fc:	00012213 	andeq	r2, r1, r3, lsl r2
 100:	5e033c00 	cdppl	12, 0, cr3, cr3, cr0, {0}
 104:	02000008 	andeq	r0, r0, #8
 108:	01221312 			; <UNDEFINED> instruction: 0x01221312
 10c:	03400000 	movteq	r0, #0
 110:	00002879 	andeq	r2, r0, r9, ror r8
 114:	22131302 	andscs	r1, r3, #134217728	; 0x8000000
 118:	44000001 	strmi	r0, [r0], #-1
 11c:	00290400 	eoreq	r0, r9, r0, lsl #8
 120:	04050000 	streq	r0, [r5], #-0
 124:	00263607 	eoreq	r3, r6, r7, lsl #12
 128:	34010600 	strcc	r0, [r1], #-1536	; 0xfffffa00
 12c:	14020000 	strne	r0, [r2], #-0
 130:	00011d02 	andeq	r1, r1, r2, lsl #26
 134:	02280200 	eoreq	r0, r8, #0, 4
 138:	01c11216 	biceq	r1, r1, r6, lsl r2
 13c:	ad030000 	stcge	0, cr0, [r3, #-0]
 140:	0200002c 	andeq	r0, r0, #44	; 0x2c
 144:	01220f17 			; <UNDEFINED> instruction: 0x01220f17
 148:	03000000 	movweq	r0, #0
 14c:	00000f72 	andeq	r0, r0, r2, ror pc
 150:	220f1802 	andcs	r1, pc, #131072	; 0x20000
 154:	04000001 	streq	r0, [r0], #-1
 158:	0035d803 	eorseq	sp, r5, r3, lsl #16
 15c:	0f190200 	svceq	0x00190200
 160:	00000122 	andeq	r0, r0, r2, lsr #2
 164:	32640308 	rsbcc	r0, r4, #8, 6	; 0x20000000
 168:	1a020000 	bne	80170 <g_pfnVectors-0x7f7fe90>
 16c:	0001220f 	andeq	r2, r1, pc, lsl #4
 170:	1d030c00 	stcne	12, cr0, [r3, #-0]
 174:	02000028 	andeq	r0, r0, #40	; 0x28
 178:	01220f1b 			; <UNDEFINED> instruction: 0x01220f1b
 17c:	03100000 	tsteq	r0, #0
 180:	000005d8 	ldrdeq	r0, [r0], -r8
 184:	220f1c02 	andcs	r1, pc, #512	; 0x200
 188:	14000001 	strne	r0, [r0], #-1
 18c:	00292103 	eoreq	r2, r9, r3, lsl #2
 190:	0f1d0200 	svceq	0x001d0200
 194:	00000122 	andeq	r0, r0, r2, lsr #2
 198:	292b0318 	stmdbcs	fp!, {r3, r4, r8, r9}
 19c:	1e020000 	cdpne	0, 0, cr0, cr2, cr0, {0}
 1a0:	0001220f 	andeq	r2, r1, pc, lsl #4
 1a4:	6f031c00 	svcvs	0x00031c00
 1a8:	0200002e 	andeq	r0, r0, #46	; 0x2e
 1ac:	01220f1f 			; <UNDEFINED> instruction: 0x01220f1f
 1b0:	03200000 	nopeq	{0}	; <UNPREDICTABLE>
 1b4:	00002e1a 	andeq	r2, r0, sl, lsl lr
 1b8:	220f2002 	andcs	r2, pc, #2
 1bc:	24000001 	strcs	r0, [r0], #-1
 1c0:	01350400 	teqeq	r5, r0, lsl #8
 1c4:	62060000 	andvs	r0, r6, #0
 1c8:	02000007 	andeq	r0, r0, #7
 1cc:	01c10221 	biceq	r0, r1, r1, lsr #4
 1d0:	1c020000 	stcne	0, cr0, [r2], {-0}
 1d4:	37124402 	ldrcc	r4, [r2, -r2, lsl #8]
 1d8:	03000002 	movweq	r0, #2
 1dc:	00002d85 	andeq	r2, r0, r5, lsl #27
 1e0:	220f4502 	andcs	r4, pc, #8388608	; 0x800000
 1e4:	00000001 	andeq	r0, r0, r1
 1e8:	00042b03 	andeq	r2, r4, r3, lsl #22
 1ec:	0f460200 	svceq	0x00460200
 1f0:	00000122 	andeq	r0, r0, r2, lsr #2
 1f4:	19bc0304 	ldmibne	ip!, {r2, r8, r9}
 1f8:	47020000 	strmi	r0, [r2, -r0]
 1fc:	0001220f 	andeq	r2, r1, pc, lsl #4
 200:	81030800 	tsthi	r3, r0, lsl #16
 204:	0200000a 	andeq	r0, r0, #10
 208:	01220f48 			; <UNDEFINED> instruction: 0x01220f48
 20c:	030c0000 	movweq	r0, #49152	; 0xc000
 210:	000019d8 	ldrdeq	r1, [r0], -r8
 214:	220f4902 	andcs	r4, pc, #32768	; 0x8000
 218:	10000001 	andne	r0, r0, r1
 21c:	000a9d03 	andeq	r9, sl, r3, lsl #26
 220:	0f4a0200 	svceq	0x004a0200
 224:	00000122 	andeq	r0, r0, r2, lsr #2
 228:	2a9f0314 	bcs	fe7c0e80 <BootRAM+0xc9b1621>
 22c:	4b020000 	blmi	80234 <g_pfnVectors-0x7f7fdcc>
 230:	0001220f 	andeq	r2, r1, pc, lsl #4
 234:	04001800 	streq	r1, [r0], #-2048	; 0xfffff800
 238:	000001d2 	ldrdeq	r0, [r0], -r2
 23c:	00214806 	eoreq	r4, r1, r6, lsl #16
 240:	024c0200 	subeq	r0, ip, #0, 4
 244:	00000237 	andeq	r0, r0, r7, lsr r2
 248:	4e021802 	cdpmi	8, 0, cr1, cr2, cr2, {0}
 24c:	0002a012 	andeq	sl, r2, r2, lsl r0
 250:	2fae0300 	svccs	0x00ae0300
 254:	4f020000 	svcmi	0x00020000
 258:	0001220f 	andeq	r2, r1, pc, lsl #4
 25c:	e4030000 	str	r0, [r3], #-0
 260:	02000024 	andeq	r0, r0, #36	; 0x24
 264:	01220f50 			; <UNDEFINED> instruction: 0x01220f50
 268:	03040000 	movweq	r0, #16384	; 0x4000
 26c:	00000ee6 	andeq	r0, r0, r6, ror #29
 270:	220f5102 	andcs	r5, pc, #-2147483648	; 0x80000000
 274:	08000001 	stmdaeq	r0, {r0}
 278:	00137503 	andseq	r7, r3, r3, lsl #10
 27c:	0f520200 	svceq	0x00520200
 280:	00000122 	andeq	r0, r0, r2, lsr #2
 284:	1270030c 	rsbsne	r0, r0, #12, 6	; 0x30000000
 288:	53020000 	movwpl	r0, #8192	; 0x2000
 28c:	0001220f 	andeq	r2, r1, pc, lsl #4
 290:	72071000 	andvc	r1, r7, #0
 294:	02005250 	andeq	r5, r0, #80, 4
 298:	01220f54 			; <UNDEFINED> instruction: 0x01220f54
 29c:	00140000 	andseq	r0, r4, r0
 2a0:	00024804 	andeq	r4, r2, r4, lsl #16
 2a4:	302a0600 	eorcc	r0, sl, r0, lsl #12
 2a8:	55020000 	strpl	r0, [r2, #-0]
 2ac:	0002a002 	andeq	sl, r2, r2
 2b0:	2b4e0800 	blcs	13822b8 <g_pfnVectors-0x6c7dd48>
 2b4:	2a010000 	bcs	402bc <g_pfnVectors-0x7fbfd44>
 2b8:	0002c705 	andeq	ip, r2, r5, lsl #14
 2bc:	0002ac00 	andeq	sl, r2, r0, lsl #24
 2c0:	0000e008 	andeq	lr, r0, r8
 2c4:	099c0100 	ldmibeq	ip, {r8}
 2c8:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 2cc:	c7040074 	smlsdxgt	r4, r4, r0, r0
 2d0:	0a000002 	beq	2e0 <g_pfnVectors-0x7fffd20>
 2d4:	00000656 	andeq	r0, r0, r6, asr r6
 2d8:	5c061f01 	stcpl	15, cr1, [r6], {1}
 2dc:	50080002 	andpl	r0, r8, r2
 2e0:	01000000 	mrseq	r0, (UNDEF: 0)
 2e4:	0002f79c 	muleq	r2, ip, r7
 2e8:	00610b00 	rsbeq	r0, r1, r0, lsl #22
 2ec:	ce122001 	cdpgt	0, 1, cr2, cr2, cr1, {0}
 2f0:	02000002 	andeq	r0, r0, #2
 2f4:	0c007491 	cfstrseq	mvf7, [r0], {145}	; 0x91
 2f8:	006b6c63 	rsbeq	r6, fp, r3, ror #24
 2fc:	88060301 	stmdahi	r6, {r0, r8, r9}
 300:	d4080001 	strle	r0, [r8], #-1
 304:	01000000 	mrseq	r0, (UNDEF: 0)
 308:	Address 0x00000308 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xfffff4f2
   c:	10011117 	andne	r1, r1, r7, lsl r1
  10:	17429917 	smlaldne	r9, r2, r7, r9
  14:	13020000 	movwne	r0, #8192	; 0x2000
  18:	3a0b0b01 	bcc	2c2c24 <g_pfnVectors-0x7d3d3dc>
  1c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  20:	0013010b 	andseq	r0, r3, fp, lsl #2
  24:	000d0300 	andeq	r0, sp, r0, lsl #6
  28:	0b3a0e03 	bleq	e8383c <g_pfnVectors-0x717c7c4>
  2c:	0b390b3b 	bleq	e42d20 <g_pfnVectors-0x71bd2e0>
  30:	0b381349 	bleq	e04d5c <g_pfnVectors-0x71fb2a4>
  34:	35040000 	strcc	r0, [r4, #-0]
  38:	00134900 	andseq	r4, r3, r0, lsl #18
  3c:	00240500 	eoreq	r0, r4, r0, lsl #10
  40:	0b3e0b0b 	bleq	f82c74 <g_pfnVectors-0x707d38c>
  44:	00000e03 	andeq	r0, r0, r3, lsl #28
  48:	03001606 	movweq	r1, #1542	; 0x606
  4c:	3b0b3a0e 	blcc	2ce88c <g_pfnVectors-0x7d31774>
  50:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  54:	07000013 	smladeq	r0, r3, r0, r0
  58:	0803000d 	stmdaeq	r3, {r0, r2, r3}
  5c:	0b3b0b3a 	bleq	ec2d4c <g_pfnVectors-0x713d2b4>
  60:	13490b39 	movtne	r0, #39737	; 0x9b39
  64:	00000b38 	andeq	r0, r0, r8, lsr fp
  68:	3f002e08 	svccc	0x00002e08
  6c:	3a0e0319 	bcc	380cd8 <g_pfnVectors-0x7c7f328>
  70:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  74:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
  78:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
  7c:	96184006 	ldrls	r4, [r8], -r6
  80:	00001942 	andeq	r1, r0, r2, asr #18
  84:	0b002409 	bleq	90b0 <g_pfnVectors-0x7ff6f50>
  88:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
  8c:	0a000008 	beq	b4 <g_pfnVectors-0x7ffff4c>
  90:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  94:	0b3a0e03 	bleq	e838a8 <g_pfnVectors-0x717c758>
  98:	0b390b3b 	bleq	e42d8c <g_pfnVectors-0x71bd274>
  9c:	06120111 			; <UNDEFINED> instruction: 0x06120111
  a0:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  a4:	00130119 	andseq	r0, r3, r9, lsl r1
  a8:	00340b00 	eorseq	r0, r4, r0, lsl #22
  ac:	0b3a0803 	bleq	e820c0 <g_pfnVectors-0x717df40>
  b0:	0b390b3b 	bleq	e42da4 <g_pfnVectors-0x71bd25c>
  b4:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  b8:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
  bc:	03193f00 	tsteq	r9, #0, 30
  c0:	3b0b3a08 	blcc	2ce8e8 <g_pfnVectors-0x7d31718>
  c4:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
  c8:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
  cc:	97184006 	ldrls	r4, [r8, -r6]
  d0:	00001942 	andeq	r1, r0, r2, asr #18
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000002c 	andeq	r0, r0, ip, lsr #32
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000188 	stmdaeq	r0, {r3, r7, r8}
  14:	000000d4 	ldrdeq	r0, [r0], -r4
  18:	0800025c 	stmdaeq	r0, {r2, r3, r4, r6, r9}
  1c:	00000050 	andeq	r0, r0, r0, asr r0
  20:	080002ac 	stmdaeq	r0, {r2, r3, r5, r7, r9}
  24:	000000e0 	andeq	r0, r0, r0, ror #1
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	08000188 	stmdaeq	r0, {r3, r7, r8}
   4:	0800025c 	stmdaeq	r0, {r2, r3, r4, r6, r9}
   8:	0800025c 	stmdaeq	r0, {r2, r3, r4, r6, r9}
   c:	080002ac 	stmdaeq	r0, {r2, r3, r5, r7, r9}
  10:	080002ac 	stmdaeq	r0, {r2, r3, r5, r7, r9}
  14:	0800038c 	stmdaeq	r0, {r2, r3, r7, r8, r9}
	...

Disassembly of section .debug_macro:

00000000 <.debug_macro>:
   0:	00020004 	andeq	r0, r2, r4
   4:	07000000 	streq	r0, [r0, -r0]
   8:	0000001a 	andeq	r0, r0, sl, lsl r0
   c:	03010003 	movweq	r0, #4099	; 0x1003
  10:	ce070201 	cdpgt	2, 0, cr0, cr7, cr1, {0}
  14:	0400000a 	streq	r0, [r0], #-10
  18:	00040004 	andeq	r0, r4, r4
  1c:	e9000500 	stmdb	r0, {r8, sl}
  20:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
  24:	002bd700 	eoreq	sp, fp, r0, lsl #14
  28:	ff000500 			; <UNDEFINED> instruction: 0xff000500
  2c:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
  30:	0007c400 	andeq	ip, r7, r0, lsl #8
  34:	6b000500 	blvs	143c <g_pfnVectors-0x7ffebc4>
  38:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
  3c:	00050900 	andeq	r0, r5, r0, lsl #18
  40:	a4000500 	strge	r0, [r0], #-1280	; 0xfffffb00
  44:	05000003 	streq	r0, [r0, #-3]
  48:	00204f00 	eoreq	r4, r0, r0, lsl #30
  4c:	a2000500 	andge	r0, r0, #0, 10
  50:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  54:	00089600 	andeq	r9, r8, r0, lsl #12
  58:	67000500 	strvs	r0, [r0, -r0, lsl #10]
  5c:	05000006 	streq	r0, [r0, #-6]
  60:	001e8300 	andseq	r8, lr, r0, lsl #6
  64:	a5000500 	strge	r0, [r0, #-1280]	; 0xfffffb00
  68:	05000005 	streq	r0, [r0, #-5]
  6c:	002de500 	eoreq	lr, sp, r0, lsl #10
  70:	a8000500 	stmdage	r0, {r8, sl}
  74:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
  78:	001cfc00 	andseq	pc, ip, r0, lsl #24
  7c:	36000500 	strcc	r0, [r0], -r0, lsl #10
  80:	05000031 	streq	r0, [r0, #-49]	; 0xffffffcf
  84:	001f1000 	andseq	r1, pc, r0
  88:	c1000500 	tstgt	r0, r0, lsl #10
  8c:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
  90:	00067a00 	andeq	r7, r6, r0, lsl #20
  94:	7a000500 	bvc	149c <g_pfnVectors-0x7ffeb64>
  98:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
  9c:	00203b00 	eoreq	r3, r0, r0, lsl #22
  a0:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
  a4:	05000004 	streq	r0, [r0, #-4]
  a8:	00045600 	andeq	r5, r4, r0, lsl #12
  ac:	73000500 	movwvc	r0, #1280	; 0x500
  b0:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
  b4:	0012f300 	andseq	pc, r2, r0, lsl #6
  b8:	58000500 	stmdapl	r0, {r8, sl}
  bc:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  c0:	0004c300 	andeq	ip, r4, r0, lsl #6
  c4:	a1000500 	tstge	r0, r0, lsl #10
  c8:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
  cc:	0006f900 	andeq	pc, r6, r0, lsl #18
  d0:	00000500 	andeq	r0, r0, r0, lsl #10
  d4:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
  d8:	0029ef00 	eoreq	lr, r9, r0, lsl #30
  dc:	93000500 	movwls	r0, #1280	; 0x500
  e0:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
  e4:	0014f900 	andseq	pc, r4, r0, lsl #18
  e8:	e3000500 	movw	r0, #1280	; 0x500
  ec:	0500000f 	streq	r0, [r0, #-15]
  f0:	001f8900 	andseq	r8, pc, r0, lsl #18
  f4:	47000500 	strmi	r0, [r0, -r0, lsl #10]
  f8:	05000031 	streq	r0, [r0, #-49]	; 0xffffffcf
  fc:	002e4700 	eoreq	r4, lr, r0, lsl #14
 100:	6a000500 	bvs	1508 <g_pfnVectors-0x7ffeaf8>
 104:	05000004 	streq	r0, [r0, #-4]
 108:	00230600 	eoreq	r0, r3, r0, lsl #12
 10c:	38000500 	stmdacc	r0, {r8, sl}
 110:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
 114:	00274700 	eoreq	r4, r7, r0, lsl #14
 118:	f1000500 			; <UNDEFINED> instruction: 0xf1000500
 11c:	05000005 	streq	r0, [r0, #-5]
 120:	0025ec00 	eoreq	lr, r5, r0, lsl #24
 124:	35000500 	strcc	r0, [r0, #-1280]	; 0xfffffb00
 128:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 12c:	0028f200 	eoreq	pc, r8, r0, lsl #4
 130:	5f000500 	svcpl	0x00000500
 134:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 138:	00299700 	eoreq	r9, r9, r0, lsl #14
 13c:	e0000500 	and	r0, r0, r0, lsl #10
 140:	05000031 	streq	r0, [r0, #-49]	; 0xffffffcf
 144:	0006a500 	andeq	sl, r6, r0, lsl #10
 148:	ac000500 	cfstr32ge	mvfx0, [r0], {-0}
 14c:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 150:	0008a900 	andeq	sl, r8, r0, lsl #18
 154:	50000500 	andpl	r0, r0, r0, lsl #10
 158:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 15c:	001cb300 	andseq	fp, ip, r0, lsl #6
 160:	bb000500 	bllt	1568 <g_pfnVectors-0x7ffea98>
 164:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
 168:	0023c800 	eoreq	ip, r3, r0, lsl #16
 16c:	61000500 	tstvs	r0, r0, lsl #10
 170:	05000005 	streq	r0, [r0, #-5]
 174:	000f0900 	andeq	r0, pc, r0, lsl #18
 178:	2f000500 	svccs	0x00000500
 17c:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 180:	0030f200 	eorseq	pc, r0, r0, lsl #4
 184:	e2000500 	and	r0, r0, #0, 10
 188:	05000009 	streq	r0, [r0, #-9]
 18c:	0000b700 	andeq	fp, r0, r0, lsl #14
 190:	23000500 	movwcs	r0, #1280	; 0x500
 194:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 198:	00262100 	eoreq	r2, r6, r0, lsl #2
 19c:	75000500 	strvc	r0, [r0, #-1280]	; 0xfffffb00
 1a0:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 1a4:	002e9e00 	eoreq	r9, lr, r0, lsl #28
 1a8:	f4000500 	vst3.8	{d0,d2,d4}, [r0], r0
 1ac:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
 1b0:	002cb400 	eoreq	fp, ip, r0, lsl #8
 1b4:	a8000500 	stmdage	r0, {r8, sl}
 1b8:	05000002 	streq	r0, [r0, #-2]
 1bc:	00178800 	andseq	r8, r7, r0, lsl #16
 1c0:	f1000500 			; <UNDEFINED> instruction: 0xf1000500
 1c4:	05000007 	streq	r0, [r0, #-7]
 1c8:	00245c00 	eoreq	r5, r4, r0, lsl #24
 1cc:	8e000500 	cfsh32hi	mvfx0, mvfx0, #0
 1d0:	05000005 	streq	r0, [r0, #-5]
 1d4:	001fae00 	andseq	sl, pc, r0, lsl #28
 1d8:	0e000500 	cfsh32eq	mvfx0, mvfx0, #0
 1dc:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 1e0:	0028a700 	eoreq	sl, r8, r0, lsl #14
 1e4:	cc000500 	cfstr32gt	mvfx0, [r0], {-0}
 1e8:	05000026 	streq	r0, [r0, #-38]	; 0xffffffda
 1ec:	00276100 	eoreq	r6, r7, r0, lsl #2
 1f0:	a0000500 	andge	r0, r0, r0, lsl #10
 1f4:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 1f8:	000ca900 	andeq	sl, ip, r0, lsl #18
 1fc:	de000500 	cfsh32le	mvfx0, mvfx0, #0
 200:	05000008 	streq	r0, [r0, #-8]
 204:	001ff000 	andseq	pc, pc, r0
 208:	0f000500 	svceq	0x00000500
 20c:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 210:	002ac800 	eoreq	ip, sl, r0, lsl #16
 214:	e2000500 	and	r0, r0, #0, 10
 218:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 21c:	00029100 	andeq	r9, r2, r0, lsl #2
 220:	ab000500 	blge	1628 <g_pfnVectors-0x7ffe9d8>
 224:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 228:	00253200 	eoreq	r3, r5, r0, lsl #4
 22c:	41000500 	tstmi	r0, r0, lsl #10
 230:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
 234:	00224b00 	eoreq	r4, r2, r0, lsl #22
 238:	ec000500 	cfstr32	mvfx0, [r0], {-0}
 23c:	05000010 	streq	r0, [r0, #-16]
 240:	00317200 	eorseq	r7, r1, r0, lsl #4
 244:	12000500 	andne	r0, r0, #0, 10
 248:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
 24c:	0006c500 	andeq	ip, r6, r0, lsl #10
 250:	53000500 	movwpl	r0, #1280	; 0x500
 254:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 258:	00002500 	andeq	r2, r0, r0, lsl #10
 25c:	80000500 	andhi	r0, r0, r0, lsl #10
 260:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 264:	00244400 	eoreq	r4, r4, r0, lsl #8
 268:	ea000500 	b	1670 <g_pfnVectors-0x7ffe990>
 26c:	0500000d 	streq	r0, [r0, #-13]
 270:	001fc700 	andseq	ip, pc, r0, lsl #14
 274:	18000500 	stmdane	r0, {r8, sl}
 278:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
 27c:	000da700 	andeq	sl, sp, r0, lsl #14
 280:	c5000500 	strgt	r0, [r0, #-1280]	; 0xfffffb00
 284:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
 288:	001a0b00 	andseq	r0, sl, r0, lsl #22
 28c:	a1000500 	tstge	r0, r0, lsl #10
 290:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 294:	0011b600 	andseq	fp, r1, r0, lsl #12
 298:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 29c:	05000006 	streq	r0, [r0, #-6]
 2a0:	000a1800 	andeq	r1, sl, r0, lsl #16
 2a4:	a5000500 	strge	r0, [r0, #-1280]	; 0xfffffb00
 2a8:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
 2ac:	0007d600 	andeq	sp, r7, r0, lsl #12
 2b0:	ee000500 	cfsh32	mvfx0, mvfx0, #0
 2b4:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 2b8:	000a3900 	andeq	r3, sl, r0, lsl #18
 2bc:	a1000500 	tstge	r0, r0, lsl #10
 2c0:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
 2c4:	00334e00 	eorseq	r4, r3, r0, lsl #28
 2c8:	02000500 	andeq	r0, r0, #0, 10
 2cc:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 2d0:	0018f800 	andseq	pc, r8, r0, lsl #16
 2d4:	55000500 	strpl	r0, [r0, #-1280]	; 0xfffffb00
 2d8:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 2dc:	0025d300 	eoreq	sp, r5, r0, lsl #6
 2e0:	78000500 	stmdavc	r0, {r8, sl}
 2e4:	0500000d 	streq	r0, [r0, #-13]
 2e8:	0001ca00 	andeq	ip, r1, r0, lsl #20
 2ec:	bc000500 	cfstr32lt	mvfx0, [r0], {-0}
 2f0:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
 2f4:	00043000 	andeq	r3, r4, r0
 2f8:	f8000500 			; <UNDEFINED> instruction: 0xf8000500
 2fc:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
 300:	00127700 	andseq	r7, r2, r0, lsl #14
 304:	7a000500 	bvc	170c <g_pfnVectors-0x7ffe8f4>
 308:	0500000e 	streq	r0, [r0, #-14]
 30c:	002b1a00 	eoreq	r1, fp, r0, lsl #20
 310:	a6000500 	strge	r0, [r0], -r0, lsl #10
 314:	05000004 	streq	r0, [r0, #-4]
 318:	0032bd00 	eorseq	fp, r2, r0, lsl #26
 31c:	79000500 	stmdbvc	r0, {r8, sl}
 320:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 324:	00013500 	andeq	r3, r1, r0, lsl #10
 328:	5a000500 	bpl	1730 <g_pfnVectors-0x7ffe8d0>
 32c:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
 330:	001f4f00 	andseq	r4, pc, r0, lsl #30
 334:	6a000500 	bvs	173c <g_pfnVectors-0x7ffe8c4>
 338:	0500000b 	streq	r0, [r0, #-11]
 33c:	00022500 	andeq	r2, r2, r0, lsl #10
 340:	39000500 	stmdbcc	r0, {r8, sl}
 344:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 348:	00170300 	andseq	r0, r7, r0, lsl #6
 34c:	22000500 	andcs	r0, r0, #0, 10
 350:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 354:	0019e100 	andseq	lr, r9, r0, lsl #2
 358:	7d000500 	cfstr32vc	mvfx0, [r0, #-0]
 35c:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
 360:	001c9f00 	andseq	r9, ip, r0, lsl #30
 364:	d0000500 	andle	r0, r0, r0, lsl #10
 368:	05000033 	streq	r0, [r0, #-51]	; 0xffffffcd
 36c:	000c7b00 	andeq	r7, ip, r0, lsl #22
 370:	37000500 	strcc	r0, [r0, -r0, lsl #10]
 374:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
 378:	0017d600 	andseq	sp, r7, r0, lsl #12
 37c:	a5000500 	strge	r0, [r0, #-1280]	; 0xfffffb00
 380:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 384:	002ec200 	eoreq	ip, lr, r0, lsl #4
 388:	a5000500 	strge	r0, [r0, #-1280]	; 0xfffffb00
 38c:	0500000e 	streq	r0, [r0, #-14]
 390:	00166c00 	andseq	r6, r6, r0, lsl #24
 394:	a3000500 	movwge	r0, #1280	; 0x500
 398:	0500000b 	streq	r0, [r0, #-11]
 39c:	0032d400 	eorseq	sp, r2, r0, lsl #8
 3a0:	43000500 	movwmi	r0, #1280	; 0x500
 3a4:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 3a8:	002dd100 	eoreq	sp, sp, r0, lsl #2
 3ac:	52000500 	andpl	r0, r0, #0, 10
 3b0:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 3b4:	0024e900 	eoreq	lr, r4, r0, lsl #18
 3b8:	47000500 	strmi	r0, [r0, -r0, lsl #10]
 3bc:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 3c0:	001ba700 	andseq	sl, fp, r0, lsl #14
 3c4:	35000500 	strcc	r0, [r0, #-1280]	; 0xfffffb00
 3c8:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 3cc:	00239d00 	eoreq	r9, r3, r0, lsl #26
 3d0:	0d000500 	cfstr32eq	mvfx0, [r0, #-0]
 3d4:	05000036 	streq	r0, [r0, #-54]	; 0xffffffca
 3d8:	00096900 	andeq	r6, r9, r0, lsl #18
 3dc:	1e000500 	cfsh32ne	mvfx0, mvfx0, #0
 3e0:	05000031 	streq	r0, [r0, #-49]	; 0xffffffcf
 3e4:	000b9200 	andeq	r9, fp, r0, lsl #4
 3e8:	4d000500 	cfstr32mi	mvfx0, [r0, #-0]
 3ec:	05000005 	streq	r0, [r0, #-5]
 3f0:	001b1600 	andseq	r1, fp, r0, lsl #12
 3f4:	79000500 	stmdbvc	r0, {r8, sl}
 3f8:	05000002 	streq	r0, [r0, #-2]
 3fc:	00174500 	andseq	r4, r7, r0, lsl #10
 400:	22000500 	andcs	r0, r0, #0, 10
 404:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
 408:	00322200 	eorseq	r2, r2, r0, lsl #4
 40c:	a0000500 	andge	r0, r0, r0, lsl #10
 410:	05000000 	streq	r0, [r0, #-0]
 414:	00034700 	andeq	r4, r3, r0, lsl #14
 418:	16000500 	strne	r0, [r0], -r0, lsl #10
 41c:	05000010 	streq	r0, [r0, #-16]
 420:	000bb100 	andeq	fp, fp, r0, lsl #2
 424:	aa000500 	bge	182c <g_pfnVectors-0x7ffe7d4>
 428:	05000031 	streq	r0, [r0, #-49]	; 0xffffffcf
 42c:	0033ec00 	eorseq	lr, r3, r0, lsl #24
 430:	c6000500 	strgt	r0, [r0], -r0, lsl #10
 434:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 438:	000ece00 	andeq	ip, lr, r0, lsl #28
 43c:	52000500 	andpl	r0, r0, #0, 10
 440:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 444:	00061e00 	andeq	r1, r6, r0, lsl #28
 448:	bd000500 	cfstr32lt	mvfx0, [r0, #-0]
 44c:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 450:	0029b900 	eoreq	fp, r9, r0, lsl #18
 454:	68000500 	stmdavs	r0, {r8, sl}
 458:	05000026 	streq	r0, [r0, #-38]	; 0xffffffda
 45c:	00339e00 	eorseq	r9, r3, r0, lsl #28
 460:	25000500 	strcs	r0, [r0, #-1280]	; 0xfffffb00
 464:	05000033 	streq	r0, [r0, #-51]	; 0xffffffcd
 468:	00277a00 	eoreq	r7, r7, r0, lsl #20
 46c:	d6000500 	strle	r0, [r0], -r0, lsl #10
 470:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 474:	00212200 	eoreq	r2, r1, r0, lsl #4
 478:	75000500 	strvc	r0, [r0, #-1280]	; 0xfffffb00
 47c:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 480:	00114d00 	andseq	r4, r1, r0, lsl #26
 484:	a6000500 	strge	r0, [r0], -r0, lsl #10
 488:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
 48c:	00215d00 	eoreq	r5, r1, r0, lsl #26
 490:	2e000500 	cfsh32cs	mvfx0, mvfx0, #0
 494:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
 498:	00018d00 	andeq	r8, r1, r0, lsl #26
 49c:	af000500 	svcge	0x00000500
 4a0:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 4a4:	0016b900 	andseq	fp, r6, r0, lsl #18
 4a8:	47000500 	strmi	r0, [r0, -r0, lsl #10]
 4ac:	05000007 	streq	r0, [r0, #-7]
 4b0:	001acb00 	andseq	ip, sl, r0, lsl #22
 4b4:	38000500 	stmdacc	r0, {r8, sl}
 4b8:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
 4bc:	00144700 	andseq	r4, r4, r0, lsl #14
 4c0:	2e000500 	cfsh32cs	mvfx0, mvfx0, #0
 4c4:	05000006 	streq	r0, [r0, #-6]
 4c8:	002f6b00 	eoreq	r6, pc, r0, lsl #22
 4cc:	99000500 	stmdbls	r0, {r8, sl}
 4d0:	05000009 	streq	r0, [r0, #-9]
 4d4:	002a5600 	eoreq	r5, sl, r0, lsl #12
 4d8:	a6000500 	strge	r0, [r0], -r0, lsl #10
 4dc:	0500000a 	streq	r0, [r0, #-10]
 4e0:	0014be00 	andseq	fp, r4, r0, lsl #28
 4e4:	c4000500 	strgt	r0, [r0], #-1280	; 0xfffffb00
 4e8:	0500000c 	streq	r0, [r0, #-12]
 4ec:	000a2600 	andeq	r2, sl, r0, lsl #12
 4f0:	e1000500 	tst	r0, r0, lsl #10
 4f4:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
 4f8:	00086b00 	andeq	r6, r8, r0, lsl #22
 4fc:	df000500 	svcle	0x00000500
 500:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 504:	0013f700 	andseq	pc, r3, r0, lsl #14
 508:	d8000500 	stmdale	r0, {r8, sl}
 50c:	05000000 	streq	r0, [r0, #-0]
 510:	0024ff00 	eoreq	pc, r4, r0, lsl #30
 514:	8b000500 	blhi	191c <g_pfnVectors-0x7ffe6e4>
 518:	05000016 	streq	r0, [r0, #-22]	; 0xffffffea
 51c:	0026dd00 	eoreq	sp, r6, r0, lsl #26
 520:	45000500 	strmi	r0, [r0, #-1280]	; 0xfffffb00
 524:	05000010 	streq	r0, [r0, #-16]
 528:	000d4c00 	andeq	r4, sp, r0, lsl #24
 52c:	bd000500 	cfstr32lt	mvfx0, [r0, #-0]
 530:	0500000a 	streq	r0, [r0, #-10]
 534:	0017bf00 	andseq	fp, r7, r0, lsl #30
 538:	38000500 	stmdacc	r0, {r8, sl}
 53c:	0500000f 	streq	r0, [r0, #-15]
 540:	00004300 	andeq	r4, r0, r0, lsl #6
 544:	26000500 	strcs	r0, [r0], -r0, lsl #10
 548:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 54c:	001be900 	andseq	lr, fp, r0, lsl #18
 550:	5c000500 	cfstr32pl	mvfx0, [r0], {-0}
 554:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 558:	00260400 	eoreq	r0, r6, r0, lsl #8
 55c:	1d000500 	cfstr32ne	mvfx0, [r0, #-0]
 560:	05000001 	streq	r0, [r0, #-1]
 564:	0033b600 	eorseq	fp, r3, r0, lsl #12
 568:	5f000500 	svcpl	0x00000500
 56c:	05000002 	streq	r0, [r0, #-2]
 570:	002b9c00 	eoreq	r9, fp, r0, lsl #24
 574:	39000500 	stmdbcc	r0, {r8, sl}
 578:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
 57c:	00307700 	eorseq	r7, r0, r0, lsl #14
 580:	7a000500 	bvc	1988 <g_pfnVectors-0x7ffe678>
 584:	0500000f 	streq	r0, [r0, #-15]
 588:	0017f700 	andseq	pc, r7, r0, lsl #14
 58c:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 590:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
 594:	00320700 	eorseq	r0, r2, r0, lsl #14
 598:	5d000500 	cfstr32pl	mvfx0, [r0, #-0]
 59c:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 5a0:	002e2f00 	eoreq	r2, lr, r0, lsl #30
 5a4:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 5a8:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
 5ac:	000c6500 	andeq	r6, ip, r0, lsl #10
 5b0:	67000500 	strvs	r0, [r0, -r0, lsl #10]
 5b4:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 5b8:	001e1900 	andseq	r1, lr, r0, lsl #18
 5bc:	20000500 	andcs	r0, r0, r0, lsl #10
 5c0:	05000007 	streq	r0, [r0, #-7]
 5c4:	0035f700 	eorseq	pc, r5, r0, lsl #14
 5c8:	33000500 	movwcc	r0, #1280	; 0x500
 5cc:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
 5d0:	0025a500 	eoreq	sl, r5, r0, lsl #10
 5d4:	dd000500 	cfstr32le	mvfx0, [r0, #-0]
 5d8:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
 5dc:	00106e00 	andseq	r6, r0, r0, lsl #28
 5e0:	54000500 	strpl	r0, [r0], #-1280	; 0xfffffb00
 5e4:	05000001 	streq	r0, [r0, #-1]
 5e8:	00005d00 	andeq	r5, r0, r0, lsl #26
 5ec:	0d000500 	cfstr32eq	mvfx0, [r0, #-0]
 5f0:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
 5f4:	00161800 	andseq	r1, r6, r0, lsl #16
 5f8:	d9000500 	stmdble	r0, {r8, sl}
 5fc:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 600:	0026b300 	eoreq	fp, r6, r0, lsl #6
 604:	eb000500 	bl	1a0c <g_pfnVectors-0x7ffe5f4>
 608:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
 60c:	000e1b00 	andeq	r1, lr, r0, lsl #22
 610:	19000500 	stmdbne	r0, {r8, sl}
 614:	05000008 	streq	r0, [r0, #-8]
 618:	0022f400 	eoreq	pc, r2, r0, lsl #8
 61c:	28000500 	stmdacs	r0, {r8, sl}
 620:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 624:	0011db00 	andseq	sp, r1, r0, lsl #22
 628:	24000500 	strcs	r0, [r0], #-1280	; 0xfffffb00
 62c:	0500000d 	streq	r0, [r0, #-13]
 630:	002b7100 	eoreq	r7, fp, r0, lsl #2
 634:	42000500 	andmi	r0, r0, #0, 10
 638:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 63c:	002eef00 	eoreq	lr, lr, r0, lsl #30
 640:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 644:	05000003 	streq	r0, [r0, #-3]
 648:	00131e00 	andseq	r1, r3, r0, lsl #28
 64c:	bc000500 	cfstr32lt	mvfx0, [r0], {-0}
 650:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
 654:	002ff900 	eoreq	pc, pc, r0, lsl #18
 658:	11000500 	tstne	r0, r0, lsl #10
 65c:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 660:	00109400 	andseq	r9, r0, r0, lsl #8
 664:	86000500 	strhi	r0, [r0], -r0, lsl #10
 668:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 66c:	002c5000 	eoreq	r5, ip, r0
 670:	e6000500 	str	r0, [r0], -r0, lsl #10
 674:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 678:	00008e00 	andeq	r8, r0, r0, lsl #28
 67c:	c4000500 	strgt	r0, [r0], #-1280	; 0xfffffb00
 680:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 684:	000d0800 	andeq	r0, sp, r0, lsl #16
 688:	8a000500 	bhi	1a90 <g_pfnVectors-0x7ffe570>
 68c:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
 690:	001a8300 	andseq	r8, sl, r0, lsl #6
 694:	6b000500 	blvs	1a9c <g_pfnVectors-0x7ffe564>
 698:	05000007 	streq	r0, [r0, #-7]
 69c:	00268d00 	eoreq	r8, r6, r0, lsl #26
 6a0:	5e000500 	cfsh32pl	mvfx0, mvfx0, #0
 6a4:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
 6a8:	000eec00 	andeq	lr, lr, r0, lsl #24
 6ac:	dc000500 	cfstr32le	mvfx0, [r0], {-0}
 6b0:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
 6b4:	000e3600 	andeq	r3, lr, r0, lsl #12
 6b8:	55000500 	strpl	r0, [r0, #-1280]	; 0xfffffb00
 6bc:	05000016 	streq	r0, [r0, #-22]	; 0xffffffea
 6c0:	002a1100 	eoreq	r1, sl, r0, lsl #2
 6c4:	fc000500 	stc2	5, cr0, [r0], {-0}
 6c8:	0500000d 	streq	r0, [r0, #-13]
 6cc:	00196000 	andseq	r6, r9, r0
 6d0:	34000500 	strcc	r0, [r0], #-1280	; 0xfffffb00
 6d4:	05000003 	streq	r0, [r0, #-3]
 6d8:	00355000 	eorseq	r5, r5, r0
 6dc:	40000500 	andmi	r0, r0, r0, lsl #10
 6e0:	0500000b 	streq	r0, [r0, #-11]
 6e4:	0022ad00 	eoreq	sl, r2, r0, lsl #26
 6e8:	d6000500 	strle	r0, [r0], -r0, lsl #10
 6ec:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 6f0:	0015df00 	andseq	sp, r5, r0, lsl #30
 6f4:	b5000500 	strlt	r0, [r0, #-1280]	; 0xfffffb00
 6f8:	0500000e 	streq	r0, [r0, #-14]
 6fc:	0004dd00 	andeq	sp, r4, r0, lsl #26
 700:	85000500 	strhi	r0, [r0, #-1280]	; 0xfffffb00
 704:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
 708:	000fd100 	andeq	sp, pc, r0, lsl #2
 70c:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 710:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 714:	002aa600 	eoreq	sl, sl, r0, lsl #12
 718:	13000500 	movwne	r0, #1280	; 0x500
 71c:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 720:	00141300 	andseq	r1, r4, r0, lsl #6
 724:	7a000500 	bvc	1b2c <g_pfnVectors-0x7ffe4d4>
 728:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 72c:	00175f00 	andseq	r5, r7, r0, lsl #30
 730:	d8000500 	stmdale	r0, {r8, sl}
 734:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 738:	0023ff00 	eoreq	pc, r3, r0, lsl #30
 73c:	8b000500 	blhi	1b44 <g_pfnVectors-0x7ffe4bc>
 740:	0500000c 	streq	r0, [r0, #-12]
 744:	00192100 	andseq	r2, r9, r0, lsl #2
 748:	3b000500 	blcc	1b50 <g_pfnVectors-0x7ffe4b0>
 74c:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 750:	00201a00 	eoreq	r1, r0, r0, lsl #20
 754:	2d000500 	cfstr32cs	mvfx0, [r0, #-0]
 758:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 75c:	001bfb00 	andseq	pc, fp, r0, lsl #22
 760:	22000500 	andcs	r0, r0, #0, 10
 764:	05000036 	streq	r0, [r0, #-54]	; 0xffffffca
 768:	0016f000 	andseq	pc, r6, r0
 76c:	74000500 	strvc	r0, [r0], #-1280	; 0xfffffb00
 770:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
 774:	00256d00 	eoreq	r6, r5, r0, lsl #26
 778:	10000500 	andne	r0, r0, r0, lsl #10
 77c:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 780:	001b6800 	andseq	r6, fp, r0, lsl #16
 784:	0b000500 	bleq	1b8c <g_pfnVectors-0x7ffe474>
 788:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 78c:	0008f700 	andeq	pc, r8, r0, lsl #14
 790:	32000500 	andcc	r0, r0, #0, 10
 794:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
 798:	002b3100 	eoreq	r3, fp, r0, lsl #2
 79c:	b0000500 	andlt	r0, r0, r0, lsl #10
 7a0:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 7a4:	00194c00 	andseq	r4, r9, r0, lsl #24
 7a8:	47000500 	strmi	r0, [r0, -r0, lsl #10]
 7ac:	05000009 	streq	r0, [r0, #-9]
 7b0:	000cde00 	andeq	sp, ip, r0, lsl #28
 7b4:	6e000500 	cfsh32vs	mvfx0, mvfx0, #0
 7b8:	05000001 	streq	r0, [r0, #-1]
 7bc:	000e4900 	andeq	r4, lr, r0, lsl #18
 7c0:	f9000500 			; <UNDEFINED> instruction: 0xf9000500
 7c4:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 7c8:	00137b00 	andseq	r7, r3, r0, lsl #22
 7cc:	68000500 	stmdavs	r0, {r8, sl}
 7d0:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 7d4:	0015c000 	andseq	ip, r5, r0
 7d8:	b3000500 	movwlt	r0, #1280	; 0x500
 7dc:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 7e0:	00080400 	andeq	r0, r8, r0, lsl #8
 7e4:	52000500 	andpl	r0, r0, #0, 10
 7e8:	0500000a 	streq	r0, [r0, #-10]
 7ec:	00091b00 	andeq	r1, r9, r0, lsl #22
 7f0:	ef000500 	svc	0x00000500
 7f4:	05000000 	streq	r0, [r0, #-0]
 7f8:	00345000 	eorseq	r5, r4, r0
 7fc:	08000500 	stmdaeq	r0, {r8, sl}
 800:	05000002 	streq	r0, [r0, #-2]
 804:	00286a00 	eoreq	r6, r8, r0, lsl #20
 808:	fa000500 	blx	1c10 <g_pfnVectors-0x7ffe3f0>
 80c:	05000001 	streq	r0, [r0, #-1]
 810:	00267e00 	eoreq	r7, r6, r0, lsl #28
 814:	2d000500 	cfstr32cs	mvfx0, [r0, #-0]
 818:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 81c:	0023f000 	eoreq	pc, r3, r0
 820:	39000500 	stmdbcc	r0, {r8, sl}
 824:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 828:	0027ac00 	eoreq	sl, r7, r0, lsl #24
 82c:	67000500 	strvs	r0, [r0, -r0, lsl #10]
 830:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 834:	00254400 	eoreq	r4, r5, r0, lsl #8
 838:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 83c:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 840:	00243400 	eoreq	r3, r4, r0, lsl #8
 844:	d7000500 	strle	r0, [r0, -r0, lsl #10]
 848:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 84c:	002bc700 	eoreq	ip, fp, r0, lsl #14
 850:	a3000500 	movwge	r0, #1280	; 0x500
 854:	05000001 	streq	r0, [r0, #-1]
 858:	001c1600 	andseq	r1, ip, r0, lsl #12
 85c:	16000500 	strne	r0, [r0], -r0, lsl #10
 860:	05000002 	streq	r0, [r0, #-2]
 864:	001c6200 	andseq	r6, ip, r0, lsl #4
 868:	7b000500 	blvc	1c70 <g_pfnVectors-0x7ffe390>
 86c:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
 870:	002a3300 	eoreq	r3, sl, r0, lsl #6
 874:	3d000500 	cfstr32cc	mvfx0, [r0, #-0]
 878:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 87c:	0013e800 	andseq	lr, r3, r0, lsl #16
 880:	31000500 	tstcc	r0, r0, lsl #10
 884:	0500000b 	streq	r0, [r0, #-11]
 888:	000c2600 	andeq	r2, ip, r0, lsl #12
 88c:	e4000500 	str	r0, [r0], #-1280	; 0xfffffb00
 890:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
 894:	00098a00 	andeq	r8, r9, r0, lsl #20
 898:	6b000500 	blvs	1ca0 <g_pfnVectors-0x7ffe360>
 89c:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
 8a0:	001d7500 	andseq	r7, sp, r0, lsl #10
 8a4:	20000500 	andcs	r0, r0, r0, lsl #10
 8a8:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 8ac:	00265800 	eoreq	r5, r6, r0, lsl #16
 8b0:	da000500 	ble	1cb8 <g_pfnVectors-0x7ffe348>
 8b4:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
 8b8:	00347e00 	eorseq	r7, r4, r0, lsl #28
 8bc:	9f000500 	svcls	0x00000500
 8c0:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 8c4:	00053d00 	andeq	r3, r5, r0, lsl #26
 8c8:	33000500 	movwcc	r0, #1280	; 0x500
 8cc:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 8d0:	0016a400 	andseq	sl, r6, r0, lsl #8
 8d4:	86000500 	strhi	r0, [r0], -r0, lsl #10
 8d8:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 8dc:	001aff00 	andseq	pc, sl, r0, lsl #30
 8e0:	08000500 	stmdaeq	r0, {r8, sl}
 8e4:	05000016 	streq	r0, [r0, #-22]	; 0xffffffea
 8e8:	0005dd00 	andeq	sp, r5, r0, lsl #26
 8ec:	ed000500 	cfstr32	mvfx0, [r0, #-0]
 8f0:	0500000a 	streq	r0, [r0, #-10]
 8f4:	000c0100 	andeq	r0, ip, r0, lsl #2
 8f8:	ac000500 	cfstr32ge	mvfx0, [r0], {-0}
 8fc:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
 900:	000be300 	andeq	lr, fp, r0, lsl #6
 904:	e1000500 	tst	r0, r0, lsl #10
 908:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 90c:	001b2500 	andseq	r2, fp, r0, lsl #10
 910:	f0000500 			; <UNDEFINED> instruction: 0xf0000500
 914:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 918:	00247000 	eoreq	r7, r4, r0
 91c:	0b000500 	bleq	1d24 <g_pfnVectors-0x7ffe2dc>
 920:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 924:	0010cf00 	andseq	ip, r0, r0, lsl #30
 928:	cb000500 	blgt	1d30 <g_pfnVectors-0x7ffe2d0>
 92c:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
 930:	002d8d00 	eoreq	r8, sp, r0, lsl #26
 934:	84000500 	strhi	r0, [r0], #-1280	; 0xfffffb00
 938:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 93c:	002af900 	eoreq	pc, sl, r0, lsl #18
 940:	fd000500 	stc2	5, cr0, [r0, #-0]
 944:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 948:	0006dd00 	andeq	sp, r6, r0, lsl #26
 94c:	eb000500 	bl	1d54 <g_pfnVectors-0x7ffe2ac>
 950:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 954:	0001e600 	andeq	lr, r1, r0, lsl #12
 958:	9f000500 	svcls	0x00000500
 95c:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 960:	00051400 	andeq	r1, r5, r0, lsl #8
 964:	dd000500 	cfstr32le	mvfx0, [r0, #-0]
 968:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 96c:	00310a00 	eorseq	r0, r1, r0, lsl #20
 970:	16000600 	strne	r0, [r0], -r0, lsl #12
 974:	05000004 	streq	r0, [r0, #-4]
 978:	00123c00 	andseq	r3, r2, r0, lsl #24
 97c:	0a000600 	beq	2184 <g_pfnVectors-0x7ffde7c>
 980:	06000006 	streq	r0, [r0], -r6
 984:	00342400 	eorseq	r2, r4, r0, lsl #8
 988:	6b000600 	blvs	2190 <g_pfnVectors-0x7ffde70>
 98c:	0500000a 	streq	r0, [r0, #-10]
 990:	0003b500 	andeq	fp, r3, r0, lsl #10
 994:	8a000600 	bhi	219c <g_pfnVectors-0x7ffde64>
 998:	0600000a 	streq	r0, [r0], -sl
 99c:	001a2900 	andseq	r2, sl, r0, lsl #18
 9a0:	3a000500 	bcc	1da8 <g_pfnVectors-0x7ffe258>
 9a4:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 9a8:	0018e400 	andseq	lr, r8, r0, lsl #8
 9ac:	5d000600 	stcpl	6, cr0, [r0, #-0]
 9b0:	0500000e 	streq	r0, [r0, #-14]
 9b4:	00289000 	eoreq	r9, r8, r0
 9b8:	35000500 	strcc	r0, [r0, #-1280]	; 0xfffffb00
 9bc:	0500000c 	streq	r0, [r0, #-12]
 9c0:	00030600 	andeq	r0, r3, r0, lsl #12
 9c4:	db000600 	blle	21cc <g_pfnVectors-0x7ffde34>
 9c8:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 9cc:	0032a700 	eorseq	sl, r2, r0, lsl #14
 9d0:	2e000500 	cfsh32cs	mvfx0, mvfx0, #0
 9d4:	0600001d 			; <UNDEFINED> instruction: 0x0600001d
 9d8:	00168000 	andseq	r8, r6, r0
 9dc:	b7000500 	strlt	r0, [r0, -r0, lsl #10]
 9e0:	05000007 	streq	r0, [r0, #-7]
 9e4:	00319c00 	eorseq	r9, r1, r0, lsl #24
 9e8:	22000500 	andcs	r0, r0, #0, 10
 9ec:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
 9f0:	00011000 	andeq	r1, r1, r0
 9f4:	d6000500 	strle	r0, [r0], -r0, lsl #10
 9f8:	06000012 			; <UNDEFINED> instruction: 0x06000012
 9fc:	001b5300 	andseq	r5, fp, r0, lsl #6
 a00:	4b000500 	blmi	1e08 <g_pfnVectors-0x7ffe1f8>
 a04:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 a08:	001b4700 	andseq	r4, fp, r0, lsl #14
 a0c:	04000500 	streq	r0, [r0], #-1280	; 0xfffffb00
 a10:	0600002a 	streq	r0, [r0], -sl, lsr #32
 a14:	001c8200 	andseq	r8, ip, r0, lsl #4
 a18:	5e000500 	cfsh32pl	mvfx0, mvfx0, #0
 a1c:	06000009 	streq	r0, [r0], -r9
 a20:	00031d00 	andeq	r1, r3, r0, lsl #26
 a24:	80000600 	andhi	r0, r0, r0, lsl #12
 a28:	06000033 			; <UNDEFINED> instruction: 0x06000033
 a2c:	00249100 	eoreq	r9, r4, r0, lsl #2
 a30:	ac000600 	stcge	6, cr0, [r0], {-0}
 a34:	0600000f 	streq	r0, [r0], -pc
 a38:	00000000 	andeq	r0, r0, r0
 a3c:	c7000600 	strgt	r0, [r0, -r0, lsl #12]
 a40:	05000008 	streq	r0, [r0, #-8]
 a44:	00357100 	eorseq	r7, r5, r0, lsl #2
 a48:	d9000600 	stmdble	r0, {r9, sl}
 a4c:	06000001 	streq	r0, [r0], -r1
 a50:	001e7800 	andseq	r7, lr, r0, lsl #16
 a54:	f1000600 			; <UNDEFINED> instruction: 0xf1000600
 a58:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 a5c:	00333800 	eorseq	r3, r3, r0, lsl #16
 a60:	8e000500 	cfsh32hi	mvfx0, mvfx0, #0
 a64:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
 a68:	002eb200 	eoreq	fp, lr, r0, lsl #4
 a6c:	3d000500 	cfstr32cc	mvfx0, [r0, #-0]
 a70:	0500000d 	streq	r0, [r0, #-13]
 a74:	00122400 	andseq	r2, r2, r0, lsl #8
 a78:	43000500 	movwmi	r0, #1280	; 0x500
 a7c:	05000026 	streq	r0, [r0, #-38]	; 0xffffffda
 a80:	0003c900 	andeq	ip, r3, r0, lsl #18
 a84:	f3000600 	vmax.u8	d0, d0, d0
 a88:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 a8c:	001ed100 	andseq	sp, lr, r0, lsl #2
 a90:	65000500 	strvs	r0, [r0, #-1280]	; 0xfffffb00
 a94:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 a98:	001dd100 	andseq	sp, sp, r0, lsl #2
 a9c:	51000500 	tstpl	r0, r0, lsl #10
 aa0:	0500000c 	streq	r0, [r0, #-12]
 aa4:	0026ab00 	eoreq	sl, r6, r0, lsl #22
 aa8:	86000500 	strhi	r0, [r0], -r0, lsl #10
 aac:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 ab0:	002c3200 	eoreq	r3, ip, r0, lsl #4
 ab4:	73000500 	movwvc	r0, #1280	; 0x500
 ab8:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 abc:	001a2100 	andseq	r2, sl, r0, lsl #2
 ac0:	42000500 	andmi	r0, r0, #0, 10
 ac4:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
 ac8:	000fff00 	andeq	pc, pc, r0, lsl #30
 acc:	00040000 	andeq	r0, r4, r0
 ad0:	04580500 	ldrbeq	r0, [r8], #-1280	; 0xfffffb00
 ad4:	0500000a 	streq	r0, [r0, #-10]
 ad8:	0003fc59 	andeq	pc, r3, r9, asr ip	; <UNPREDICTABLE>
 adc:	bb5b0500 	bllt	16c1ee4 <g_pfnVectors-0x693e11c>
 ae0:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 ae4:	0005b85c 	andeq	fp, r5, ip, asr r8
 ae8:	385d0500 	ldmdacc	sp, {r8, sl}^
 aec:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 af0:	00258d5e 	eoreq	r8, r5, lr, asr sp
 af4:	7d5f0500 	cfldr64vc	mvdx0, [pc, #-0]	; afc <g_pfnVectors-0x7fff504>
 af8:	05000007 	streq	r0, [r0, #-7]
 afc:	0010af60 	andseq	sl, r0, r0, ror #30
 b00:	12610500 	rsbne	r0, r1, #0, 10
 b04:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
 b08:	002fc864 	eoreq	ip, pc, r4, ror #16
 b0c:	3d650500 	cfstr64cc	mvdx0, [r5, #-0]
 b10:	05000002 	streq	r0, [r0, #-2]
 b14:	001eb167 	andseq	fp, lr, r7, ror #2
 b18:	d4680500 	strbtle	r0, [r8], #-1280	; 0xfffffb00
 b1c:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 b20:	00163369 	andseq	r3, r6, r9, ror #6
 b24:	dc6a0500 	cfstr64le	mvdx0, [sl], #-0
 b28:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
 b2c:	0036356b 	eorseq	r3, r6, fp, ror #10
 b30:	676c0500 	strbvs	r0, [ip, -r0, lsl #10]!
 b34:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
 b38:	000b126d 	andeq	r1, fp, sp, ror #4
 b3c:	28700500 	ldmdacs	r0!, {r8, sl}^
 b40:	05000005 	streq	r0, [r0, #-5]
 b44:	00198971 	andseq	r8, r9, r1, ror r9
 b48:	96730500 	ldrbtls	r0, [r3], -r0, lsl #10
 b4c:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 b50:	0015aa74 	andseq	sl, r5, r4, ror sl
 b54:	9f750500 	svcls	0x00750500
 b58:	05000007 	streq	r0, [r0, #-7]
 b5c:	00159276 	andseq	r9, r5, r6, ror r2
 b60:	85770500 	ldrbhi	r0, [r7, #-1280]!	; 0xfffffb00
 b64:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
 b68:	001c8b78 	andseq	r8, ip, r8, ror fp
 b6c:	977b0500 	ldrbls	r0, [fp, -r0, lsl #10]!
 b70:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
 b74:	002b537c 	eoreq	r5, fp, ip, ror r3
 b78:	f47e0500 			; <UNDEFINED> instruction: 0xf47e0500
 b7c:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
 b80:	0033627f 	eorseq	r6, r3, pc, ror r2
 b84:	01800500 	orreq	r0, r0, r0, lsl #10
 b88:	00002ad9 	ldrdeq	r2, [r0], -r9
 b8c:	8f018105 	svchi	0x00018105
 b90:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 b94:	18cc0182 	stmiane	ip, {r1, r7, r8}^
 b98:	83050000 	movwhi	r0, #20480	; 0x5000
 b9c:	0025bb01 	eoreq	fp, r5, r1, lsl #22
 ba0:	01840500 	orreq	r0, r4, r0, lsl #10
 ba4:	0000340a 	andeq	r3, r0, sl, lsl #8
 ba8:	d8018505 	stmdale	r1, {r0, r2, r8, sl, pc}
 bac:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 bb0:	04400188 	strbeq	r0, [r0], #-392	; 0xfffffe78
 bb4:	89050000 	stmdbhi	r5, {}	; <UNPREDICTABLE>
 bb8:	0016d201 	andseq	sp, r6, r1, lsl #4
 bbc:	018b0500 	orreq	r0, fp, r0, lsl #10
 bc0:	000034c1 	andeq	r3, r0, r1, asr #9
 bc4:	1b018c05 	blne	63be0 <g_pfnVectors-0x7f9c420>
 bc8:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 bcc:	0dca018d 	stfeqe	f0, [sl, #564]	; 0x234
 bd0:	8e050000 	cdphi	0, 0, cr0, cr5, cr0, {0}
 bd4:	00270601 	eoreq	r0, r7, r1, lsl #12
 bd8:	018f0500 	orreq	r0, pc, r0, lsl #10
 bdc:	000001b2 			; <UNDEFINED> instruction: 0x000001b2
 be0:	92019005 	andls	r9, r1, #5
 be4:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
 be8:	12bc0191 	adcsne	r0, ip, #1073741860	; 0x40000024
 bec:	94050000 	strls	r0, [r5], #-0
 bf0:	00037601 	andeq	r7, r3, r1, lsl #12
 bf4:	01950500 	orrseq	r0, r5, r0, lsl #10
 bf8:	00000f51 	andeq	r0, r0, r1, asr pc
 bfc:	02019705 	andeq	r9, r1, #1310720	; 0x140000
 c00:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 c04:	0f200198 	svceq	0x00200198
 c08:	99050000 	stmdbls	r5, {}	; <UNPREDICTABLE>
 c0c:	00087c01 	andeq	r7, r8, r1, lsl #24
 c10:	019a0500 	orrseq	r0, sl, r0, lsl #10
 c14:	00001256 	andeq	r1, r0, r6, asr r2
 c18:	53019b05 	movwpl	r9, #6917	; 0x1b05
 c1c:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
 c20:	12a2019c 	adcne	r0, r2, #156, 2	; 0x27
 c24:	9f050000 	svcls	0x00050000
 c28:	002d7001 	eoreq	r7, sp, r1
 c2c:	01a00500 	lsleq	r0, r0, #10
 c30:	00001e96 	muleq	r0, r6, lr
 c34:	e601a205 	str	sl, [r1], -r5, lsl #4
 c38:	05000003 	streq	r0, [r0, #-3]
 c3c:	241c01a3 	ldrcs	r0, [ip], #-419	; 0xfffffe5d
 c40:	a4050000 	strge	r0, [r5], #-0
 c44:	00318801 	eorseq	r8, r1, r1, lsl #16
 c48:	01a50500 			; <UNDEFINED> instruction: 0x01a50500
 c4c:	00001a3d 	andeq	r1, r0, sp, lsr sl
 c50:	9101a605 	tstls	r1, r5, lsl #12
 c54:	0500000d 	streq	r0, [r0, #-13]
 c58:	177201a7 	ldrbne	r0, [r2, -r7, lsr #3]!
 c5c:	a8050000 	stmdage	r5, {}	; <UNPREDICTABLE>
 c60:	0022cc01 	eoreq	ip, r2, r1, lsl #24
 c64:	01aa0500 			; <UNDEFINED> instruction: 0x01aa0500
 c68:	000027f2 	strdeq	r2, [r0], -r2	; <UNPREDICTABLE>
 c6c:	da01ab05 	ble	6b888 <g_pfnVectors-0x7f94778>
 c70:	00000002 	andeq	r0, r0, r2

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000116 	andeq	r0, r0, r6, lsl r1
   4:	00320003 	eorseq	r0, r2, r3
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	54530000 	ldrbpl	r0, [r3], #-0
  28:	4632334d 	ldrtmi	r3, [r2], -sp, asr #6
  2c:	63736944 	cmnvs	r3, #68, 18	; 0x110000
  30:	7265766f 	rsbvc	r7, r5, #116391936	; 0x6f00000
  34:	00682e79 	rsbeq	r2, r8, r9, ror lr
  38:	00000000 	andeq	r0, r0, r0
  3c:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
  40:	00018802 	andeq	r8, r1, r2, lsl #16
  44:	02051508 	andeq	r1, r5, #8, 10	; 0x2000000
  48:	2009052f 	andcs	r0, r9, pc, lsr #10
  4c:	052f0205 	streq	r0, [pc, #-517]!	; fffffe4f <BootRAM+0xe1f05f0>
  50:	0205200e 	andeq	r2, r5, #14
  54:	200b052f 	andcs	r0, fp, pc, lsr #10
  58:	05300905 	ldreq	r0, [r0, #-2309]!	; 0xfffff6fb
  5c:	0a056707 	beq	159c80 <g_pfnVectors-0x7ea6380>
  60:	01040200 	mrseq	r0, R12_usr
  64:	00110520 	andseq	r0, r1, r0, lsr #10
  68:	2e010402 	cdpcs	4, 0, cr0, cr1, cr2, {0}
  6c:	02000705 	andeq	r0, r0, #1310720	; 0x140000
  70:	052e0104 	streq	r0, [lr, #-260]!	; 0xfffffefc
  74:	6767300e 	strbvs	r3, [r7, -lr]!
  78:	0905684b 	stmdbeq	r5, {r0, r1, r3, r6, fp, sp, lr}
  7c:	67070568 	strvs	r0, [r7, -r8, ror #10]
  80:	02000a05 	andeq	r0, r0, #20480	; 0x5000
  84:	05200104 	streq	r0, [r0, #-260]!	; 0xfffffefc
  88:	04020011 	streq	r0, [r2], #-17	; 0xffffffef
  8c:	07052e01 	streq	r2, [r5, -r1, lsl #28]
  90:	01040200 	mrseq	r0, R12_usr
  94:	300c052e 	andcc	r0, ip, lr, lsr #10
  98:	05670b05 	strbeq	r0, [r7, #-2821]!	; 0xfffff4fb
  9c:	0a056807 	beq	15a0c0 <g_pfnVectors-0x7ea5f40>
  a0:	01040200 	mrseq	r0, R12_usr
  a4:	00130520 	andseq	r0, r3, r0, lsr #10
  a8:	2e010402 	cdpcs	4, 0, cr0, cr1, cr2, {0}
  ac:	02000705 	andeq	r0, r0, #1310720	; 0x140000
  b0:	052e0104 	streq	r0, [lr, #-260]!	; 0xfffffefc
  b4:	0567300b 	strbeq	r3, [r7, #-11]!
  b8:	0a026701 	beq	99cc4 <g_pfnVectors-0x7f6633c>
  bc:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
  c0:	02050019 	andeq	r0, r5, #25
  c4:	0800025c 	stmdaeq	r0, {r2, r3, r4, r6, r9}
  c8:	05011e03 	streq	r1, [r1, #-3587]	; 0xfffff1fd
  cc:	05053d12 	streq	r3, [r5, #-3346]	; 0xfffff2ee
  d0:	200f0531 	andcs	r0, pc, r1, lsr r5	; <UNPREDICTABLE>
  d4:	0d056767 	stceq	7, cr6, [r5, #-412]	; 0xfffffe64
  d8:	67010568 	strvs	r0, [r1, -r8, ror #10]
  dc:	01000a02 	tsteq	r0, r2, lsl #20
  e0:	00010501 	andeq	r0, r1, r1, lsl #10
  e4:	02ac0205 	adceq	r0, ip, #1342177280	; 0x50000000
  e8:	2a030800 	bcs	c20f0 <g_pfnVectors-0x7f3df10>
  ec:	2f020501 	svccs	0x00020501
  f0:	05300b05 	ldreq	r0, [r0, #-2821]!	; 0xfffff4fb
  f4:	1205690f 	andne	r6, r5, #245760	; 0x3c000
  f8:	054b4b67 	strbeq	r4, [fp, #-2919]	; 0xfffff499
  fc:	674b4d15 	smlaldvs	r4, fp, r5, sp
 100:	0f054b67 	svceq	0x00054b67
 104:	67676769 	strbvs	r6, [r7, -r9, ror #14]!
 108:	054b6767 	strbeq	r6, [fp, #-1895]	; 0xfffff899
 10c:	07054c0c 	streq	r4, [r5, -ip, lsl #24]
 110:	01040200 	mrseq	r0, R12_usr
 114:	000e0268 	andeq	r0, lr, r8, ror #4
 118:	Address 0x00000118 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
       0:	52415f5f 	subpl	r5, r1, #380	; 0x17c
       4:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
       8:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
       c:	50465f45 	subpl	r5, r6, r5, asr #30
      10:	565f3631 			; <UNDEFINED> instruction: 0x565f3631
      14:	4f544345 	svcmi	0x00544345
      18:	52415f52 	subpl	r5, r1, #328	; 0x148
      1c:	4d485449 	cfstrdmi	mvd5, [r8, #-292]	; 0xfffffedc
      20:	43495445 	movtmi	r5, #37957	; 0x9445
      24:	535f5f00 	cmppl	pc, #0, 30
      28:	415f4749 	cmpmi	pc, r9, asr #14
      2c:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
      30:	414d5f43 	cmpmi	sp, r3, asr #30
      34:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
      38:	66377830 			; <UNDEFINED> instruction: 0x66377830
      3c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
      40:	5f006666 	svcpl	0x00006666
      44:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
      48:	485f3436 	ldmdami	pc, {r1, r2, r4, r5, sl, ip, sp}^	; <UNPREDICTABLE>
      4c:	515f5341 	cmppl	pc, r1, asr #6
      50:	54454955 	strbpl	r4, [r5], #-2389	; 0xfffff6ab
      54:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
      58:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
      5c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 64 <g_pfnVectors-0x7ffff9c>
      60:	34364345 	ldrtcc	r4, [r6], #-837	; 0xfffffcbb
      64:	4255535f 	subsmi	r5, r5, #2080374785	; 0x7c000001
      68:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
      6c:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; ffffff70 <BootRAM+0xe1f0711>
      70:	5f5f4e49 	svcpl	0x005f4e49
      74:	302e3020 	eorcc	r3, lr, r0, lsr #32
      78:	30303030 	eorscc	r3, r0, r0, lsr r0
      7c:	30303030 	eorscc	r3, r0, r0, lsr r0
      80:	30303030 	eorscc	r3, r0, r0, lsr r0
      84:	2d453130 	stfcse	f3, [r5, #-192]	; 0xffffff40
      88:	44333833 	ldrtmi	r3, [r3], #-2099	; 0xfffff7cd
      8c:	5f5f0044 	svcpl	0x005f0044
      90:	41524655 	cmpmi	r2, r5, asr r6
      94:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
      98:	5f544942 	svcpl	0x00544942
      9c:	0030205f 	eorseq	r2, r0, pc, asr r0
      a0:	42445f5f 	submi	r5, r4, #380	; 0x17c
      a4:	45445f4c 	strbmi	r5, [r4, #-3916]	; 0xfffff0b4
      a8:	414d4943 	cmpmi	sp, r3, asr #18
      ac:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
      b0:	205f5f47 	subscs	r5, pc, r7, asr #30
      b4:	5f003731 	svcpl	0x00003731
      b8:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
      bc:	41465f54 	cmpmi	r6, r4, asr pc
      c0:	5f385453 	svcpl	0x00385453
      c4:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
      c8:	75205f5f 	strvc	r5, [r0, #-3935]!	; 0xfffff0a1
      cc:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
      d0:	2064656e 	rsbcs	r6, r4, lr, ror #10
      d4:	00746e69 	rsbseq	r6, r4, r9, ror #28
      d8:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
      dc:	5f343654 	svcpl	0x00343654
      e0:	5f58414d 	svcpl	0x0058414d
      e4:	5f505845 	svcpl	0x00505845
      e8:	3031205f 	eorscc	r2, r1, pc, asr r0
      ec:	5f003432 	svcpl	0x00003432
      f0:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
      f4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
      f8:	50455f4d 	subpl	r5, r5, sp, asr #30
      fc:	4f4c4953 	svcmi	0x004c4953
     100:	205f5f4e 	subscs	r5, pc, lr, asr #30
     104:	50317830 	eorspl	r7, r1, r0, lsr r8
     108:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
     10c:	004b4c4c 	subeq	r4, fp, ip, asr #24
     110:	68745f5f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     114:	32626d75 	rsbcc	r6, r2, #7488	; 0x1d40
     118:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     11c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     120:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
     124:	414d5f58 	cmpmi	sp, r8, asr pc
     128:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     12c:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
     130:	34323031 	ldrtcc	r3, [r2], #-49	; 0xffffffcf
     134:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     138:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
     13c:	31545341 	cmpcc	r4, r1, asr #6
     140:	49575f36 	ldmdbmi	r7, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     144:	5f485444 	svcpl	0x00485444
     148:	3233205f 	eorscc	r2, r3, #95	; 0x5f
     14c:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
     150:	00632e6e 	rsbeq	r2, r3, lr, ror #28
     154:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
     158:	5f343643 	svcpl	0x00343643
     15c:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     160:	5f4e4f4c 	svcpl	0x004e4f4c
     164:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
     168:	4435312d 	ldrtmi	r3, [r5], #-301	; 0xfffffed3
     16c:	5f5f0044 	svcpl	0x005f0044
     170:	43414c55 	movtmi	r4, #7253	; 0x1c55
     174:	5f4d5543 	svcpl	0x004d5543
     178:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     17c:	5f4e4f4c 	svcpl	0x004e4f4c
     180:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     184:	332d5031 			; <UNDEFINED> instruction: 0x332d5031
     188:	4b4c5532 	blmi	1315658 <g_pfnVectors-0x6cea9a8>
     18c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     190:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
     194:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
     198:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     19c:	205f5f47 	subscs	r5, pc, r7, asr #30
     1a0:	5f003432 	svcpl	0x00003432
     1a4:	5153555f 	cmppl	r3, pc, asr r5
     1a8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
     1ac:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     1b0:	50470030 	subpl	r0, r7, r0, lsr r0
     1b4:	5f444f49 	svcpl	0x00444f49
     1b8:	2052444f 	subscs	r4, r2, pc, asr #8
     1bc:	49504728 	ldmdbmi	r0, {r3, r5, r8, r9, sl, lr}^
     1c0:	3e2d444f 	cdpcc	4, 2, cr4, cr13, cr15, {2}
     1c4:	52444f72 	subpl	r4, r4, #456	; 0x1c8
     1c8:	5f5f0029 	svcpl	0x005f0029
     1cc:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     1d0:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
     1d4:	63202963 			; <UNDEFINED> instruction: 0x63202963
     1d8:	415f5f00 	cmpmi	pc, r0, lsl #30
     1dc:	4e5f4d52 	mrcmi	13, 2, r4, cr15, cr2, {2}
     1e0:	5f4e4f45 	svcpl	0x004e4f45
     1e4:	5f5f005f 	svcpl	0x005f005f
     1e8:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     1ec:	575f464f 	ldrbpl	r4, [pc, -pc, asr #12]
     1f0:	5f544e49 	svcpl	0x00544e49
     1f4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     1f8:	5f5f0034 	svcpl	0x005f0034
     1fc:	495f5148 	ldmdbmi	pc, {r3, r6, r8, ip, lr}^	; <UNPREDICTABLE>
     200:	5f544942 	svcpl	0x00544942
     204:	0030205f 	eorseq	r2, r0, pc, asr r0
     208:	51515f5f 	cmppl	r1, pc, asr pc
     20c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
     210:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     214:	5f5f0030 	svcpl	0x005f0030
     218:	5f514455 	svcpl	0x00514455
     21c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     220:	30205f5f 	eorcc	r5, r0, pc, asr pc
     224:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     228:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
     22c:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
     230:	49575f34 	ldmdbmi	r7, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     234:	5f485444 	svcpl	0x00485444
     238:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
     23c:	53595300 	cmppl	r9, #0, 6
     240:	20474643 	subcs	r4, r7, r3, asr #12
     244:	45522828 	ldrbmi	r2, [r2, #-2088]	; 0xfffff7d8
     248:	59535f47 	ldmdbpl	r3, {r0, r1, r2, r6, r8, r9, sl, fp, ip, lr}^
     24c:	47464353 	smlsldmi	r4, r6, r3, r3
     250:	5953292a 	ldmdbpl	r3, {r1, r3, r5, r8, fp, sp}^
     254:	47464353 	smlsldmi	r4, r6, r3, r3
     258:	5341425f 	movtpl	r4, #4703	; 0x125f
     25c:	5f002945 	svcpl	0x00002945
     260:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     264:	5f583233 	svcpl	0x00583233
     268:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
     26c:	5f4c414d 	svcpl	0x004c414d
     270:	5f474944 	svcpl	0x00474944
     274:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
     278:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 280 <g_pfnVectors-0x7fffd80>
     27c:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 17c <g_pfnVectors-0x7fffe84>
     280:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; fffff43f <BootRAM+0xe1efbe0>
     284:	5f5f5058 	svcpl	0x005f5058
     288:	312d2820 			; <UNDEFINED> instruction: 0x312d2820
     28c:	29313230 	ldmdbcs	r1!, {r4, r5, r9, ip, sp}
     290:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     294:	5f474e4f 	svcpl	0x00474e4f
     298:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     29c:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
     2a0:	5f5f4854 	svcpl	0x005f4854
     2a4:	00343620 	eorseq	r3, r4, r0, lsr #12
     2a8:	61685f5f 	cmnvs	r8, pc, asr pc
     2ac:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
     2b0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     2b4:	656e5f65 	strbvs	r5, [lr, #-3941]!	; 0xfffff09b
     2b8:	53287478 			; <UNDEFINED> instruction: 0x53287478
     2bc:	20295254 	eorcs	r5, r9, r4, asr r2
     2c0:	61685f5f 	cmnvs	r8, pc, asr pc
     2c4:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
     2c8:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     2cc:	656e5f65 	strbvs	r5, [lr, #-3941]!	; 0xfffff09b
     2d0:	5f5f7478 	svcpl	0x005f7478
     2d4:	52545328 	subspl	r5, r4, #40, 6	; 0xa0000000
     2d8:	564e0029 	strbpl	r0, [lr], -r9, lsr #32
     2dc:	495f4349 	ldmdbmi	pc, {r0, r3, r6, r8, r9, lr}^	; <UNPREDICTABLE>
     2e0:	30524553 	subscc	r4, r2, r3, asr r5
     2e4:	76282a20 	strtvc	r2, [r8], -r0, lsr #20
     2e8:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
     2ec:	20656c69 	rsbcs	r6, r5, r9, ror #24
     2f0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     2f4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     2f8:	30292a20 	eorcc	r2, r9, r0, lsr #20
     2fc:	30304578 	eorscc	r4, r0, r8, ror r5
     300:	30314530 	eorscc	r4, r1, r0, lsr r5
     304:	5f5f0030 	svcpl	0x005f0030
     308:	5f4d5241 	svcpl	0x004d5241
     30c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     310:	575f464f 	ldrbpl	r4, [pc, -pc, asr #12]
     314:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     318:	3420545f 	strtcc	r5, [r0], #-1119	; 0xfffffba1
     31c:	415f5f00 	cmpmi	pc, r0, lsl #30
     320:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
     324:	5f363150 	svcpl	0x00363150
     328:	4d524f46 	ldclmi	15, cr4, [r2, #-280]	; 0xfffffee8
     32c:	495f5441 	ldmdbmi	pc, {r0, r6, sl, ip, lr}^	; <UNPREDICTABLE>
     330:	00454545 	subeq	r4, r5, r5, asr #10
     334:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
     338:	43415246 	movtmi	r5, #4678	; 0x1246
     33c:	42495f54 	submi	r5, r9, #84, 30	; 0x150
     340:	5f5f5449 	svcpl	0x005f5449
     344:	5f003020 	svcpl	0x00003020
     348:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
     34c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     350:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     354:	756f6428 	strbvc	r6, [pc, #-1064]!	; ffffff34 <BootRAM+0xe1f06d5>
     358:	29656c62 	stmdbcs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
     35c:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
     360:	33393637 	teqcc	r9, #57671680	; 0x3700000
     364:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
     368:	31333236 	teqcc	r3, r6, lsr r2
     36c:	2b653735 	blcs	194e048 <g_pfnVectors-0x66b1fb8>
     370:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
     374:	53550029 	cmppl	r5, #41	; 0x29
     378:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
     37c:	5341425f 	movtpl	r4, #4703	; 0x125f
     380:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
     384:	30303034 	eorscc	r3, r0, r4, lsr r0
     388:	30303434 	eorscc	r3, r0, r4, lsr r4
     38c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff494 <BootRAM+0xe1efc35>
     390:	41524653 	cmpmi	r2, r3, asr r6
     394:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 290 <g_pfnVectors-0x7fffd70>
     398:	5f5f4e49 	svcpl	0x005f4e49
     39c:	302e3020 	eorcc	r3, lr, r0, lsr #32
     3a0:	00524855 	subseq	r4, r2, r5, asr r8
     3a4:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
     3a8:	4d5f4355 	ldclmi	3, cr4, [pc, #-340]	; 25c <g_pfnVectors-0x7fffda4>
     3ac:	524f4e49 	subpl	r4, pc, #1168	; 0x490
     3b0:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
     3b4:	415f5f00 	cmpmi	pc, r0, lsl #30
     3b8:	335f4d52 	cmpcc	pc, #5248	; 0x1480
     3bc:	54494232 	strbpl	r4, [r9], #-562	; 0xfffffdce
     3c0:	4154535f 	cmpmi	r4, pc, asr r3
     3c4:	31204554 			; <UNDEFINED> instruction: 0x31204554
     3c8:	415f5f00 	cmpmi	pc, r0, lsl #30
     3cc:	415f4d52 	cmpmi	pc, r2, asr sp	; <UNPREDICTABLE>
     3d0:	535f4d53 	cmppl	pc, #5312	; 0x14c0
     3d4:	41544e59 	cmpmi	r4, r9, asr lr
     3d8:	4e555f58 	mrcmi	15, 2, r5, cr5, cr8, {2}
     3dc:	45494649 	strbmi	r4, [r9, #-1609]	; 0xfffff9b7
     3e0:	205f5f44 	subscs	r5, pc, r4, asr #30
     3e4:	49540031 	ldmdbmi	r4, {r0, r4, r5}^
     3e8:	435f324d 	cmpmi	pc, #-805306364	; 0xd0000004
     3ec:	28203152 	stmdacs	r0!, {r1, r4, r6, r8, ip, sp}
     3f0:	324d4954 	subcc	r4, sp, #84, 18	; 0x150000
     3f4:	43723e2d 	cmnmi	r2, #720	; 0x2d0
     3f8:	00293152 	eoreq	r3, r9, r2, asr r1
     3fc:	20434352 	subcs	r4, r3, r2, asr r3
     400:	52742828 	rsbspl	r2, r4, #40, 16	; 0x280000
     404:	525f4745 	subspl	r4, pc, #18087936	; 0x1140000
     408:	292a4343 	stmdbcs	sl!, {r0, r1, r6, r8, r9, lr}
     40c:	5f434352 	svcpl	0x00434352
     410:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     414:	5f5f0029 	svcpl	0x005f0029
     418:	5f4d5241 	svcpl	0x004d5241
     41c:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
     420:	5f455255 	svcpl	0x00455255
     424:	50595243 	subspl	r5, r9, r3, asr #4
     428:	72004f54 	andvc	r4, r0, #84, 30	; 0x150
     42c:	00434d50 	subeq	r4, r3, r0, asr sp
     430:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     434:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
     438:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
     43c:	00632029 	rsbeq	r2, r3, r9, lsr #32
     440:	4f495047 	svcmi	0x00495047
     444:	41425f44 	cmpmi	r2, r4, asr #30
     448:	30204553 	eorcc	r4, r0, r3, asr r5
     44c:	30303478 	eorscc	r3, r0, r8, ror r4
     450:	30433032 	subcc	r3, r3, r2, lsr r0
     454:	5f5f0030 	svcpl	0x005f0030
     458:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     45c:	535f464f 	cmppl	pc, #82837504	; 0x4f00000
     460:	5f455a49 	svcpl	0x00455a49
     464:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     468:	5f5f0034 	svcpl	0x005f0034
     46c:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     470:	545f3631 	ldrbpl	r3, [pc], #-1585	; 478 <g_pfnVectors-0x7fffb88>
     474:	5f455059 	svcpl	0x00455059
     478:	6873205f 	ldmdavs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
     47c:	2074726f 	rsbscs	r7, r4, pc, ror #4
     480:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     484:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     488:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     48c:	535f5f00 	cmppl	pc, #0, 30
     490:	4f455a49 	svcmi	0x00455a49
     494:	4f4c5f46 	svcmi	0x004c5f46
     498:	445f474e 	ldrbmi	r4, [pc], #-1870	; 4a0 <g_pfnVectors-0x7fffb60>
     49c:	4c42554f 	cfstr64mi	mvdx5, [r2], {79}	; 0x4f
     4a0:	205f5f45 	subscs	r5, pc, r5, asr #30
     4a4:	5f5f0038 	svcpl	0x005f0038
     4a8:	5f544e49 	svcpl	0x00544e49
     4ac:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     4b0:	414d5f38 	cmpmi	sp, r8, lsr pc
     4b4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     4b8:	66377830 			; <UNDEFINED> instruction: 0x66377830
     4bc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     4c0:	5f006666 	svcpl	0x00006666
     4c4:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
     4c8:	425f5245 	subsmi	r5, pc, #1342177284	; 0x50000004
     4cc:	455f4749 	ldrbmi	r4, [pc, #-1865]	; fffffd8b <BootRAM+0xe1f052c>
     4d0:	4149444e 	cmpmi	r9, lr, asr #8
     4d4:	205f5f4e 	subscs	r5, pc, lr, asr #30
     4d8:	31323334 	teqcc	r2, r4, lsr r3
     4dc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff5e4 <BootRAM+0xe1efd85>
     4e0:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
     4e4:	5f544341 	svcpl	0x00544341
     4e8:	5f58414d 	svcpl	0x0058414d
     4ec:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
     4f0:	46464646 	strbmi	r4, [r6], -r6, asr #12
     4f4:	46464646 	strbmi	r4, [r6], -r6, asr #12
     4f8:	46464646 	strbmi	r4, [r6], -r6, asr #12
     4fc:	46464646 	strbmi	r4, [r6], -r6, asr #12
     500:	34362d50 	ldrtcc	r2, [r6], #-3408	; 0xfffff2b0
     504:	524c4c55 	subpl	r4, ip, #21760	; 0x5500
     508:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
     50c:	5f43554e 	svcpl	0x0043554e
     510:	0038205f 	eorseq	r2, r8, pc, asr r0
     514:	52415f5f 	subpl	r5, r1, #380	; 0x17c
     518:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
     51c:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
     520:	53445f45 	movtpl	r5, #20293	; 0x4f45
     524:	00312050 	eorseq	r2, r1, r0, asr r0
     528:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
     52c:	5341425f 	movtpl	r4, #4703	; 0x125f
     530:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
     534:	31303034 	teqcc	r0, r4, lsr r0
     538:	30304333 	eorscc	r4, r0, r3, lsr r3
     53c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff644 <BootRAM+0xe1efde5>
     540:	465f4154 			; <UNDEFINED> instruction: 0x465f4154
     544:	5f544942 	svcpl	0x00544942
     548:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
     54c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 554 <g_pfnVectors-0x7fffaac>
     550:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 450 <g_pfnVectors-0x7fffbb0>
     554:	5f544e41 	svcpl	0x00544e41
     558:	5f474944 	svcpl	0x00474944
     55c:	3335205f 	teqcc	r5, #95	; 0x5f
     560:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff668 <BootRAM+0xe1efe09>
     564:	5f544e49 	svcpl	0x00544e49
     568:	5341454c 	movtpl	r4, #5452	; 0x154c
     56c:	5f343654 	svcpl	0x00343654
     570:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     574:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
     578:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     57c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     580:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
     584:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
     588:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
     58c:	5f5f0074 	svcpl	0x005f0074
     590:	5f544e49 	svcpl	0x00544e49
     594:	5f58414d 	svcpl	0x0058414d
     598:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     59c:	66666637 			; <UNDEFINED> instruction: 0x66666637
     5a0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     5a4:	415f5f00 	cmpmi	pc, r0, lsl #30
     5a8:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
     5ac:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
     5b0:	5341454c 	movtpl	r4, #5452	; 0x154c
     5b4:	00332045 	eorseq	r2, r3, r5, asr #32
     5b8:	5f434352 	svcpl	0x00434352
     5bc:	434c4c50 	movtmi	r4, #52304	; 0xcc50
     5c0:	20524746 	subscs	r4, r2, r6, asr #14
     5c4:	43435228 	movtmi	r5, #12840	; 0x3228
     5c8:	52723e2d 	rsbspl	r3, r2, #720	; 0x2d0
     5cc:	505f4343 	subspl	r4, pc, r3, asr #6
     5d0:	46434c4c 	strbmi	r4, [r3], -ip, asr #24
     5d4:	00295247 	eoreq	r5, r9, r7, asr #4
     5d8:	52444f72 	subpl	r4, r4, #456	; 0x1c8
     5dc:	435f5f00 	cmpmi	pc, #0, 30
     5e0:	5f524148 	svcpl	0x00524148
     5e4:	49534e55 	ldmdbmi	r3, {r0, r2, r4, r6, r9, sl, fp, lr}^
     5e8:	44454e47 	strbmi	r4, [r5], #-3655	; 0xfffff1b9
     5ec:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     5f0:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     5f4:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
     5f8:	5059545f 	subspl	r5, r9, pc, asr r4
     5fc:	205f5f45 	subscs	r5, pc, r5, asr #30
     600:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
     604:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
     608:	5f5f0074 	svcpl	0x005f0074
     60c:	5f4d5241 	svcpl	0x004d5241
     610:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
     614:	5f455255 	svcpl	0x00455255
     618:	4d445251 	sfmmi	f5, 2, [r4, #-324]	; 0xfffffebc
     61c:	5f5f0058 	svcpl	0x005f0058
     620:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
     624:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     628:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     62c:	5f5f0035 	svcpl	0x005f0035
     630:	33544c46 	cmpcc	r4, #17920	; 0x4600
     634:	414d5f32 	cmpmi	sp, r2, lsr pc
     638:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     63c:	30342e33 	eorscc	r2, r4, r3, lsr lr
     640:	33323832 	teqcc	r2, #3276800	; 0x320000
     644:	33363634 	teqcc	r6, #52, 12	; 0x3400000
     648:	38323538 	ldmdacc	r2!, {r3, r4, r5, r8, sl, ip, sp}
     64c:	2b653638 	blcs	194df34 <g_pfnVectors-0x66b20cc>
     650:	33463833 	movtcc	r3, #26675	; 0x6833
     654:	58450032 	stmdapl	r5, {r1, r4, r5}^
     658:	5f304954 	svcpl	0x00304954
     65c:	48515249 	ldmdami	r1, {r0, r3, r6, r9, ip, lr}^
     660:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
     664:	5f007265 	svcpl	0x00007265
     668:	4f54415f 	svcmi	0x0054415f
     66c:	5f43494d 	svcpl	0x0043494d
     670:	5f514553 	svcpl	0x00514553
     674:	20545343 	subscs	r5, r4, r3, asr #6
     678:	5f5f0035 	svcpl	0x005f0035
     67c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     680:	535f464f 	cmppl	pc, #82837504	; 0x4f00000
     684:	54524f48 	ldrbpl	r4, [r2], #-3912	; 0xfffff0b8
     688:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
     68c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     690:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     694:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     698:	414d5f38 	cmpmi	sp, r8, lsr pc
     69c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     6a0:	66377830 			; <UNDEFINED> instruction: 0x66377830
     6a4:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     6a8:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     6ac:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     6b0:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
     6b4:	5f5f4550 	svcpl	0x005f4550
     6b8:	67697320 	strbvs	r7, [r9, -r0, lsr #6]!
     6bc:	2064656e 	rsbcs	r6, r4, lr, ror #10
     6c0:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
     6c4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff7cc <BootRAM+0xe1eff6d>
     6c8:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
     6cc:	435f5841 	cmpmi	pc, #4259840	; 0x410000
     6d0:	20296328 	eorcs	r6, r9, r8, lsr #6
     6d4:	23232063 			; <UNDEFINED> instruction: 0x23232063
     6d8:	4c4c5520 	cfstr64mi	mvdx5, [ip], {32}
     6dc:	505f5f00 	subspl	r5, pc, r0, lsl #30
     6e0:	4d474152 	stfmie	f4, [r7, #-328]	; 0xfffffeb8
     6e4:	45525f41 	ldrbmi	r5, [r2, #-3905]	; 0xfffff0bf
     6e8:	49464544 	stmdbmi	r6, {r2, r6, r8, sl, lr}^
     6ec:	455f454e 	ldrbmi	r4, [pc, #-1358]	; 1a6 <g_pfnVectors-0x7fffe5a>
     6f0:	414e5458 	cmpmi	lr, r8, asr r4
     6f4:	3120454d 			; <UNDEFINED> instruction: 0x3120454d
     6f8:	425f5f00 	subsmi	r5, pc, #0, 30
     6fc:	5f455459 	svcpl	0x00455459
     700:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
     704:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
     708:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
     70c:	5f524544 	svcpl	0x00524544
     710:	5454494c 	ldrbpl	r4, [r4], #-2380	; 0xfffff6b4
     714:	455f454c 	ldrbmi	r4, [pc, #-1356]	; 1d0 <g_pfnVectors-0x7fffe30>
     718:	4149444e 	cmpmi	r9, lr, asr #8
     71c:	005f5f4e 	subseq	r5, pc, lr, asr #30
     720:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
     724:	5f323343 	svcpl	0x00323343
     728:	4e425553 	mcrmi	5, 2, r5, cr2, cr3, {2}
     72c:	414d524f 	cmpmi	sp, pc, asr #4
     730:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     734:	205f5f4e 	subscs	r5, pc, lr, asr #30
     738:	30302e30 	eorscc	r2, r0, r0, lsr lr
     73c:	31303030 	teqcc	r0, r0, lsr r0
     740:	35392d45 	ldrcc	r2, [r9, #-3397]!	; 0xfffff2bb
     744:	5f004644 	svcpl	0x00004644
     748:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     74c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 688 <g_pfnVectors-0x7fff978>
     750:	315f4e49 	cmpcc	pc, r9, asr #28
     754:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
     758:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
     75c:	37332d28 	ldrcc	r2, [r3, -r8, lsr #26]!
     760:	45520029 	ldrbmi	r0, [r2, #-41]	; 0xffffffd7
     764:	50475f47 	subpl	r5, r7, r7, asr #30
     768:	5f004f49 	svcpl	0x00004f49
     76c:	52464c5f 	subpl	r4, r6, #24320	; 0x5f00
     770:	5f544341 	svcpl	0x00544341
     774:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     778:	30205f5f 	eorcc	r5, r0, pc, asr pc
     77c:	43435200 	movtmi	r5, #12800	; 0x3200
     780:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
     784:	54535231 	ldrbpl	r5, [r3], #-561	; 0xfffffdcf
     788:	52282052 	eorpl	r2, r8, #82	; 0x52
     78c:	3e2d4343 	cdpcc	3, 2, cr4, cr13, cr3, {2}
     790:	43435272 	movtmi	r5, #12914	; 0x3272
     794:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
     798:	54535231 	ldrbpl	r5, [r3], #-561	; 0xfffffdcf
     79c:	45002952 	strmi	r2, [r0, #-2386]	; 0xfffff6ae
     7a0:	5f495458 	svcpl	0x00495458
     7a4:	52535452 	subspl	r5, r3, #1375731712	; 0x52000000
     7a8:	58452820 	stmdapl	r5, {r5, fp, sp}^
     7ac:	3e2d4954 			; <UNDEFINED> instruction: 0x3e2d4954
     7b0:	53545272 	cmppl	r4, #536870919	; 0x20000007
     7b4:	5f002952 	svcpl	0x00002952
     7b8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     7bc:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     7c0:	00372048 	eorseq	r2, r7, r8, asr #32
     7c4:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
     7c8:	555f4344 	ldrbpl	r4, [pc, #-836]	; 48c <g_pfnVectors-0x7fffb74>
     7cc:	335f4654 	cmpcc	pc, #84, 12	; 0x5400000
     7d0:	205f5f32 	subscs	r5, pc, r2, lsr pc	; <UNPREDICTABLE>
     7d4:	5f5f0031 	svcpl	0x005f0031
     7d8:	5f544e49 	svcpl	0x00544e49
     7dc:	5341454c 	movtpl	r4, #5452	; 0x154c
     7e0:	5f363154 	svcpl	0x00363154
     7e4:	5f58414d 	svcpl	0x0058414d
     7e8:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     7ec:	66666637 			; <UNDEFINED> instruction: 0x66666637
     7f0:	535f5f00 	cmppl	pc, #0, 30
     7f4:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     7f8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     7fc:	30205f5f 	eorcc	r5, r0, pc, asr pc
     800:	00663778 	rsbeq	r3, r6, r8, ror r7
     804:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     808:	4343414c 	movtmi	r4, #12620	; 0x314c
     80c:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
     810:	5f544942 	svcpl	0x00544942
     814:	3233205f 	eorscc	r2, r3, #95	; 0x5f
     818:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 820 <g_pfnVectors-0x7fff7e0>
     81c:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
     820:	55535f38 	ldrbpl	r5, [r3, #-3896]	; 0xfffff0c8
     824:	524f4e42 	subpl	r4, pc, #1056	; 0x420
     828:	5f4c414d 	svcpl	0x004c414d
     82c:	5f4e494d 	svcpl	0x004e494d
     830:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
     834:	30303030 	eorscc	r3, r0, r0, lsr r0
     838:	30303030 	eorscc	r3, r0, r0, lsr r0
     83c:	30303030 	eorscc	r3, r0, r0, lsr r0
     840:	30303030 	eorscc	r3, r0, r0, lsr r0
     844:	30303030 	eorscc	r3, r0, r0, lsr r0
     848:	30303030 	eorscc	r3, r0, r0, lsr r0
     84c:	30303030 	eorscc	r3, r0, r0, lsr r0
     850:	30303030 	eorscc	r3, r0, r0, lsr r0
     854:	362d4531 			; <UNDEFINED> instruction: 0x362d4531
     858:	44333431 	ldrtmi	r3, [r3], #-1073	; 0xfffffbcf
     85c:	5272004c 	rsbspl	r0, r2, #76	; 0x4c
     860:	415f4343 	cmpmi	pc, r3, asr #6
     864:	45314250 	ldrmi	r4, [r1, #-592]!	; 0xfffffdb0
     868:	5f00524e 	svcpl	0x0000524e
     86c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     870:	445f3436 	ldrbmi	r3, [pc], #-1078	; 878 <g_pfnVectors-0x7fff788>
     874:	5f5f4749 	svcpl	0x005f4749
     878:	00353120 	eorseq	r3, r5, r0, lsr #2
     87c:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
     880:	425f3254 	subsmi	r3, pc, #84, 4	; 0x40000005
     884:	28205252 	stmdacs	r0!, {r1, r4, r6, r9, ip, lr}
     888:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
     88c:	3e2d3254 	mcrcc	2, 1, r3, cr13, cr4, {2}
     890:	52524272 	subspl	r4, r2, #536870919	; 0x20000007
     894:	5f5f0029 	svcpl	0x005f0029
     898:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 79c <g_pfnVectors-0x7fff864>
     89c:	525f4349 	subspl	r4, pc, #603979777	; 0x24000001
     8a0:	58414c45 	stmdapl	r1, {r0, r2, r6, sl, fp, lr}^
     8a4:	30204445 	eorcc	r4, r0, r5, asr #8
     8a8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     8ac:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     8b0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     8b4:	545f3233 	ldrbpl	r3, [pc], #-563	; 8bc <g_pfnVectors-0x7fff744>
     8b8:	5f455059 	svcpl	0x00455059
     8bc:	6f6c205f 	svcvs	0x006c205f
     8c0:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
     8c4:	5f00746e 	svcpl	0x0000746e
     8c8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     8cc:	4145465f 	cmpmi	r5, pc, asr r6
     8d0:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
     8d4:	3150465f 	cmpcc	r0, pc, asr r6
     8d8:	4d465f36 	stclmi	15, cr5, [r6, #-216]	; 0xffffff28
     8dc:	5f5f004c 	svcpl	0x005f004c
     8e0:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     8e4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     8e8:	30205f5f 	eorcc	r5, r0, pc, asr pc
     8ec:	66666678 			; <UNDEFINED> instruction: 0x66666678
     8f0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     8f4:	5f005566 	svcpl	0x00005566
     8f8:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
     8fc:	5f4d5543 	svcpl	0x004d5543
     900:	5f4e494d 	svcpl	0x004e494d
     904:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
     908:	50315830 	eorspl	r5, r1, r0, lsr r8
     90c:	4b4c3133 	blmi	130cde0 <g_pfnVectors-0x6cf3220>
     910:	3158302d 	cmpcc	r8, sp, lsr #32
     914:	4c313350 	ldcmi	3, cr3, [r1], #-320	; 0xfffffec0
     918:	5f00294b 	svcpl	0x0000294b
     91c:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
     920:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     924:	414d5f4d 	cmpmi	sp, sp, asr #30
     928:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     92c:	46465830 			; <UNDEFINED> instruction: 0x46465830
     930:	46464646 	strbmi	r4, [r6], -r6, asr #12
     934:	46464646 	strbmi	r4, [r6], -r6, asr #12
     938:	46464646 	strbmi	r4, [r6], -r6, asr #12
     93c:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
     940:	4c553233 	lfmmi	f3, 2, [r5], {51}	; 0x33
     944:	5f004b4c 	svcpl	0x00004b4c
     948:	414c555f 	cmpmi	ip, pc, asr r5
     94c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     950:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     954:	30205f5f 	eorcc	r5, r0, pc, asr pc
     958:	4c55302e 	mrrcmi	0, 2, r3, r5, cr14
     95c:	5f5f004b 	svcpl	0x005f004b
     960:	5f4d5241 	svcpl	0x004d5241
     964:	34205046 	strtcc	r5, [r0], #-70	; 0xffffffba
     968:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     96c:	485f544c 	ldmdami	pc, {r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
     970:	495f5341 	ldmdbmi	pc, {r0, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
     974:	4e49464e 	cdpmi	6, 4, cr4, cr9, cr14, {2}
     978:	5f595449 	svcpl	0x00595449
     97c:	0031205f 	eorseq	r2, r1, pc, asr r0
     980:	65736572 	ldrbvs	r6, [r3, #-1394]!	; 0xfffffa8e
     984:	64657672 	strbtvs	r7, [r5], #-1650	; 0xfffff98e
     988:	5f5f0035 	svcpl	0x005f0035
     98c:	465f4154 			; <UNDEFINED> instruction: 0x465f4154
     990:	5f544942 	svcpl	0x00544942
     994:	3336205f 	teqcc	r6, #95	; 0x5f
     998:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     99c:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
     9a0:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
     9a4:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
     9a8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     9ac:	3239312e 	eorscc	r3, r9, #-2147483637	; 0x8000000b
     9b0:	38323930 	ldmdacc	r2!, {r4, r5, r8, fp, ip, sp}
     9b4:	30353539 	eorscc	r3, r5, r9, lsr r5
     9b8:	32313837 	eorscc	r3, r1, #3604480	; 0x370000
     9bc:	372d6535 			; <UNDEFINED> instruction: 0x372d6535
     9c0:	00323346 	eorseq	r3, r2, r6, asr #6
     9c4:	65736572 	ldrbvs	r6, [r3, #-1394]!	; 0xfffffa8e
     9c8:	64657672 	strbtvs	r7, [r5], #-1650	; 0xfffff98e
     9cc:	65720037 	ldrbvs	r0, [r2, #-55]!	; 0xffffffc9
     9d0:	76726573 			; <UNDEFINED> instruction: 0x76726573
     9d4:	00386465 	eorseq	r6, r8, r5, ror #8
     9d8:	65736572 	ldrbvs	r6, [r3, #-1394]!	; 0xfffffa8e
     9dc:	64657672 	strbtvs	r7, [r5], #-1650	; 0xfffff98e
     9e0:	5f5f0039 	svcpl	0x005f0039
     9e4:	5f544e49 	svcpl	0x00544e49
     9e8:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     9ec:	545f3436 	ldrbpl	r3, [pc], #-1078	; 9f4 <g_pfnVectors-0x7fff60c>
     9f0:	5f455059 	svcpl	0x00455059
     9f4:	6f6c205f 	svcvs	0x006c205f
     9f8:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
     9fc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     a00:	00746e69 	rsbseq	r6, r4, r9, ror #28
     a04:	5f434352 	svcpl	0x00434352
     a08:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     a0c:	34783020 	ldrbtcc	r3, [r8], #-32	; 0xffffffe0
     a10:	33323030 	teqcc	r2, #48	; 0x30
     a14:	00303038 	eorseq	r3, r0, r8, lsr r0
     a18:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     a1c:	435f3854 	cmpmi	pc, #84, 16	; 0x540000
     a20:	20296328 	eorcs	r6, r9, r8, lsr #6
     a24:	5f5f0063 	svcpl	0x005f0063
     a28:	465f5046 	ldrbmi	r5, [pc], -r6, asr #32
     a2c:	5f545341 	svcpl	0x00545341
     a30:	46414d46 	strbmi	r4, [r1], -r6, asr #26
     a34:	31203233 			; <UNDEFINED> instruction: 0x31203233
     a38:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     a3c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     a40:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     a44:	575f3631 	smmlarpl	pc, r1, r6, r3	; <UNPREDICTABLE>
     a48:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
     a4c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     a50:	5f5f0036 	svcpl	0x005f0036
     a54:	414c4c55 	cmpmi	ip, r5, asr ip
     a58:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     a5c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     a60:	30205f5f 	eorcc	r5, r0, pc, asr pc
     a64:	4c55302e 	mrrcmi	0, 2, r3, r5, cr14
     a68:	5f004b4c 	svcpl	0x00004b4c
     a6c:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     a70:	4145465f 	cmpmi	r5, pc, asr r6
     a74:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
     a78:	544f445f 	strbpl	r4, [pc], #-1119	; a80 <g_pfnVectors-0x7fff580>
     a7c:	444f5250 	strbmi	r5, [pc], #-592	; a84 <g_pfnVectors-0x7fff57c>
     a80:	58457200 	stmdapl	r5, {r9, ip, sp, lr}^
     a84:	52434954 	subpl	r4, r3, #84, 18	; 0x150000
     a88:	5f5f0032 	svcpl	0x005f0032
     a8c:	5f4d5241 	svcpl	0x004d5241
     a90:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
     a94:	5f455255 	svcpl	0x00455255
     a98:	45534d43 	ldrbmi	r4, [r3, #-3395]	; 0xfffff2bd
     a9c:	58457200 	stmdapl	r5, {r9, ip, sp, lr}^
     aa0:	52434954 	subpl	r4, r3, #84, 18	; 0x150000
     aa4:	5f5f0034 	svcpl	0x005f0034
     aa8:	33544c46 	cmpcc	r4, #17920	; 0x4600
     aac:	41485f32 	cmpmi	r8, r2, lsr pc
     ab0:	45445f53 	strbmi	r5, [r4, #-3923]	; 0xfffff0ad
     ab4:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
     ab8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     abc:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     ac0:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     ac4:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
     ac8:	5f4d524f 	svcpl	0x004d524f
     acc:	5f4e494d 	svcpl	0x004e494d
     ad0:	2e34205f 	mrccs	0, 1, r2, cr4, cr15, {2}
     ad4:	36303439 			; <UNDEFINED> instruction: 0x36303439
     ad8:	35343635 	ldrcc	r3, [r4, #-1589]!	; 0xfffff9cb
     adc:	32313438 	eorscc	r3, r1, #56, 8	; 0x38000000
     ae0:	34353634 	ldrtcc	r3, [r5], #-1588	; 0xfffff9cc
     ae4:	32332d65 	eorscc	r2, r3, #6464	; 0x1940
     ae8:	34364634 	ldrtcc	r4, [r6], #-1588	; 0xfffff9cc
     aec:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
     af0:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
     af4:	5f455641 	svcpl	0x00455641
     af8:	434e5953 	movtmi	r5, #59731	; 0xe953
     afc:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 988 <g_pfnVectors-0x7fff678>
     b00:	45524150 	ldrbmi	r4, [r2, #-336]	; 0xfffffeb0
     b04:	444e415f 	strbmi	r4, [lr], #-351	; 0xfffffea1
     b08:	4157535f 	cmpmi	r7, pc, asr r3
     b0c:	20315f50 	eorscs	r5, r1, r0, asr pc
     b10:	59530031 	ldmdbpl	r3, {r0, r4, r5}^
     b14:	47464353 	smlsldmi	r4, r6, r3, r3
     b18:	504d435f 	subpl	r4, sp, pc, asr r3
     b1c:	28205243 	stmdacs	r0!, {r0, r1, r6, r9, ip, lr}
     b20:	43535953 	cmpmi	r3, #1359872	; 0x14c000
     b24:	3e2d4746 	cdpcc	7, 2, cr4, cr13, cr6, {2}
     b28:	504d4372 	subpl	r4, sp, r2, ror r3
     b2c:	29205243 	stmdbcs	r0!, {r0, r1, r6, r9, ip, lr}
     b30:	535f5f00 	cmppl	pc, #0, 30
     b34:	42495f41 	submi	r5, r9, #260	; 0x104
     b38:	5f5f5449 	svcpl	0x005f5449
     b3c:	00363120 	eorseq	r3, r6, r0, lsr #2
     b40:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
     b44:	43415246 	movtmi	r5, #4678	; 0x1246
     b48:	414d5f54 	cmpmi	sp, r4, asr pc
     b4c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     b50:	46375830 			; <UNDEFINED> instruction: 0x46375830
     b54:	46464646 	strbmi	r4, [r6], -r6, asr #12
     b58:	46464646 	strbmi	r4, [r6], -r6, asr #12
     b5c:	46464646 	strbmi	r4, [r6], -r6, asr #12
     b60:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
     b64:	4c4c3336 	mcrrmi	3, 3, r3, ip, cr6
     b68:	5f5f0052 	svcpl	0x005f0052
     b6c:	5f544e49 	svcpl	0x00544e49
     b70:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     b74:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; aa4 <g_pfnVectors-0x7fff55c>
     b78:	5f5f5841 	svcpl	0x005f5841
     b7c:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     b80:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b84:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b88:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b8c:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
     b90:	5f5f004c 	svcpl	0x005f004c
     b94:	465f5046 	ldrbmi	r5, [pc], -r6, asr #32
     b98:	5f545341 	svcpl	0x00545341
     b9c:	46414d46 	strbmi	r4, [r1], -r6, asr #26
     ba0:	5f003120 	svcpl	0x00003120
     ba4:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     ba8:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     bac:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
     bb0:	445f5f00 	ldrbmi	r5, [pc], #-3840	; bb8 <g_pfnVectors-0x7fff448>
     bb4:	455f4c42 	ldrbmi	r4, [pc, #-3138]	; ffffff7a <BootRAM+0xe1f071b>
     bb8:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
     bbc:	5f5f4e4f 	svcpl	0x005f4e4f
     bc0:	64282820 	strtvs	r2, [r8], #-2080	; 0xfffff7e0
     bc4:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
     bc8:	2e322965 	vsubcs.f16	s4, s4, s11	; <UNPREDICTABLE>
     bcc:	34303232 	ldrtcc	r3, [r0], #-562	; 0xfffffdce
     bd0:	34303634 	ldrtcc	r3, [r0], #-1588	; 0xfffff9cc
     bd4:	30353239 	eorscc	r3, r5, r9, lsr r2
     bd8:	31333133 	teqcc	r3, r3, lsr r1
     bdc:	36312d65 	ldrtcc	r2, [r1], -r5, ror #26
     be0:	5f00294c 	svcpl	0x0000294c
     be4:	4343475f 	movtmi	r4, #14175	; 0x375f
     be8:	4f54415f 	svcmi	0x0054415f
     bec:	5f43494d 	svcpl	0x0043494d
     bf0:	4c4f4f42 	mcrrmi	15, 4, r4, pc, cr2
     bf4:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
     bf8:	52465f4b 	subpl	r5, r6, #300	; 0x12c
     bfc:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
     c00:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
     c04:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
     c08:	5f455641 	svcpl	0x00455641
     c0c:	434e5953 	movtmi	r5, #59731	; 0xe953
     c10:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; a9c <g_pfnVectors-0x7fff564>
     c14:	45524150 	ldrbmi	r4, [r2, #-336]	; 0xfffffeb0
     c18:	444e415f 	strbmi	r4, [lr], #-351	; 0xfffffea1
     c1c:	4157535f 	cmpmi	r7, pc, asr r3
     c20:	20325f50 	eorscs	r5, r2, r0, asr pc
     c24:	5f5f0031 	svcpl	0x005f0031
     c28:	465f4144 	ldrbmi	r4, [pc], -r4, asr #2
     c2c:	5f544942 	svcpl	0x00544942
     c30:	3133205f 	teqcc	r3, pc, asr r0
     c34:	415f5f00 	cmpmi	pc, r0, lsl #30
     c38:	535f4d52 	cmppl	pc, #5248	; 0x1480
     c3c:	4f455a49 	svcmi	0x00455a49
     c40:	494d5f46 	stmdbmi	sp, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
     c44:	414d494e 	cmpmi	sp, lr, asr #18
     c48:	4e455f4c 	cdpmi	15, 4, cr5, cr5, cr12, {2}
     c4c:	31204d55 			; <UNDEFINED> instruction: 0x31204d55
     c50:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffd58 <BootRAM+0xe1f04f9>
     c54:	5f534553 	svcpl	0x00534553
     c58:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
     c5c:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
     c60:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     c64:	445f5f00 	ldrbmi	r5, [pc], #-3840	; c6c <g_pfnVectors-0x7fff394>
     c68:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
     c6c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     c70:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     c74:	35392d45 	ldrcc	r2, [r9, #-3397]!	; 0xfffff2bb
     c78:	5f004644 	svcpl	0x00004644
     c7c:	4343475f 	movtmi	r4, #14175	; 0x375f
     c80:	4345495f 	movtmi	r4, #22879	; 0x595f
     c84:	3935355f 	ldmdbcc	r5!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp}
     c88:	5f003020 	svcpl	0x00003020
     c8c:	4153555f 	cmpmi	r3, pc, asr r5
     c90:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     c94:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
     c98:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
     c9c:	30205f5f 	eorcc	r5, r0, pc, asr pc
     ca0:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
     ca4:	4b485538 	blmi	121618c <g_pfnVectors-0x6de9e74>
     ca8:	505f5f00 	subspl	r5, pc, r0, lsl #30
     cac:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
     cb0:	4d5f4646 	ldclmi	6, cr4, [pc, #-280]	; ba0 <g_pfnVectors-0x7fff460>
     cb4:	5f5f5841 	svcpl	0x005f5841
     cb8:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     cbc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     cc0:	00666666 	rsbeq	r6, r6, r6, ror #12
     cc4:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     cc8:	5f323354 	svcpl	0x00323354
     ccc:	5f534148 	svcpl	0x00534148
     cd0:	45495551 	strbmi	r5, [r9, #-1361]	; 0xfffffaaf
     cd4:	414e5f54 	cmpmi	lr, r4, asr pc
     cd8:	205f5f4e 	subscs	r5, pc, lr, asr #30
     cdc:	5f5f0031 	svcpl	0x005f0031
     ce0:	43414c55 	movtmi	r4, #7253	; 0x1c55
     ce4:	5f4d5543 	svcpl	0x004d5543
     ce8:	5f58414d 	svcpl	0x0058414d
     cec:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
     cf0:	46464646 	strbmi	r4, [r6], -r6, asr #12
     cf4:	46464646 	strbmi	r4, [r6], -r6, asr #12
     cf8:	46464646 	strbmi	r4, [r6], -r6, asr #12
     cfc:	46464646 	strbmi	r4, [r6], -r6, asr #12
     d00:	32332d50 	eorscc	r2, r3, #80, 26	; 0x1400
     d04:	004b4c55 	subeq	r4, fp, r5, asr ip
     d08:	46555f5f 	usaxmi	r5, r5, pc	; <UNPREDICTABLE>
     d0c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     d10:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     d14:	30205f5f 	eorcc	r5, r0, pc, asr pc
     d18:	46464658 			; <UNDEFINED> instruction: 0x46464658
     d1c:	312d5046 			; <UNDEFINED> instruction: 0x312d5046
     d20:	00525536 	subseq	r5, r2, r6, lsr r5
     d24:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
     d28:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     d2c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     d30:	30205f5f 	eorcc	r5, r0, pc, asr pc
     d34:	50463758 	subpl	r3, r6, r8, asr r7
     d38:	5248372d 	subpl	r3, r8, #11796480	; 0xb40000
     d3c:	415f5f00 	cmpmi	pc, r0, lsl #30
     d40:	455f4d52 	ldrbmi	r4, [pc, #-3410]	; fffffff6 <BootRAM+0xe1f0797>
     d44:	5f494241 	svcpl	0x00494241
     d48:	0031205f 	eorseq	r2, r1, pc, asr r0
     d4c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     d50:	5f343654 	svcpl	0x00343654
     d54:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     d58:	5f4e4f4c 	svcpl	0x004e4f4c
     d5c:	2e32205f 	mrccs	0, 1, r2, cr2, cr15, {2}
     d60:	34303232 	ldrtcc	r3, [r0], #-562	; 0xfffffdce
     d64:	34303634 	ldrtcc	r3, [r0], #-1588	; 0xfffff9cc
     d68:	30353239 	eorscc	r3, r5, r9, lsr r2
     d6c:	31333133 	teqcc	r3, r3, lsr r1
     d70:	36312d65 	ldrtcc	r2, [r1], -r5, ror #26
     d74:	00343646 	eorseq	r3, r4, r6, asr #12
     d78:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     d7c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     d80:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     d84:	414d5f38 	cmpmi	sp, r8, lsr pc
     d88:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     d8c:	66667830 			; <UNDEFINED> instruction: 0x66667830
     d90:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
     d94:	4e435f32 	mcrmi	15, 2, r5, cr3, cr2, {1}
     d98:	54282054 	strtpl	r2, [r8], #-84	; 0xffffffac
     d9c:	2d324d49 	ldccs	13, cr4, [r2, #-292]!	; 0xfffffedc
     da0:	4e43723e 	mcrmi	2, 2, r7, cr3, cr14, {1}
     da4:	5f002954 	svcpl	0x00002954
     da8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     dac:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; cdc <g_pfnVectors-0x7fff324>
     db0:	5f5f5841 	svcpl	0x005f5841
     db4:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     db8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     dbc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     dc0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     dc4:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
     dc8:	5047004c 	subpl	r0, r7, ip, asr #32
     dcc:	5f444f49 	svcpl	0x00444f49
     dd0:	4550534f 	ldrbmi	r5, [r0, #-847]	; 0xfffffcb1
     dd4:	20524445 	subscs	r4, r2, r5, asr #8
     dd8:	49504728 	ldmdbmi	r0, {r3, r5, r8, r9, sl, lr}^
     ddc:	3e2d444f 	cdpcc	4, 2, cr4, cr13, cr15, {2}
     de0:	50534f72 	subspl	r4, r3, r2, ror pc
     de4:	52444545 	subpl	r4, r4, #289406976	; 0x11400000
     de8:	5f5f0029 	svcpl	0x005f0029
     dec:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
     df0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     df4:	30205f5f 	eorcc	r5, r0, pc, asr pc
     df8:	00663778 	rsbeq	r3, r6, r8, ror r7
     dfc:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     e00:	43415246 	movtmi	r5, #4678	; 0x1246
     e04:	50455f54 	subpl	r5, r5, r4, asr pc
     e08:	4f4c4953 	svcmi	0x004c4953
     e0c:	205f5f4e 	subscs	r5, pc, lr, asr #30
     e10:	50317830 	eorspl	r7, r1, r0, lsr r8
     e14:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
     e18:	5f00524c 	svcpl	0x0000524c
     e1c:	4345445f 	movtmi	r4, #21599	; 0x545f
     e20:	5f383231 	svcpl	0x00383231
     e24:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     e28:	5f4e4f4c 	svcpl	0x004e4f4c
     e2c:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
     e30:	4433332d 	ldrtmi	r3, [r3], #-813	; 0xfffffcd3
     e34:	5f5f004c 	svcpl	0x005f004c
     e38:	52464c55 	subpl	r4, r6, #21760	; 0x5500
     e3c:	5f544341 	svcpl	0x00544341
     e40:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     e44:	30205f5f 	eorcc	r5, r0, pc, asr pc
     e48:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     e4c:	4343414c 	movtmi	r4, #12620	; 0x314c
     e50:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
     e54:	5f544942 	svcpl	0x00544942
     e58:	3133205f 	teqcc	r3, pc, asr r0
     e5c:	415f5f00 	cmpmi	pc, r0, lsl #30
     e60:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
     e64:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
     e68:	4e5f4552 	mrcmi	5, 2, r4, cr15, cr2, {2}
     e6c:	52454d55 	subpl	r4, r5, #5440	; 0x1540
     e70:	4d5f4349 	ldclmi	3, cr4, [pc, #-292]	; d54 <g_pfnVectors-0x7fff2ac>
     e74:	494d5841 	stmdbmi	sp, {r0, r6, fp, ip, lr}^
     e78:	5f5f004e 	svcpl	0x005f004e
     e7c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     e80:	41454c5f 	cmpmi	r5, pc, asr ip
     e84:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     e88:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     e8c:	30205f5f 	eorcc	r5, r0, pc, asr pc
     e90:	66666678 			; <UNDEFINED> instruction: 0x66666678
     e94:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e98:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e9c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     ea0:	4c4c5566 	cfstr64mi	mvdx5, [ip], {102}	; 0x66
     ea4:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     ea8:	525f544c 	subspl	r5, pc, #76, 8	; 0x4c000000
     eac:	58494441 	stmdapl	r9, {r0, r6, sl, lr}^
     eb0:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
     eb4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; ffffffbc <BootRAM+0xe1f075d>
     eb8:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
     ebc:	5f544341 	svcpl	0x00544341
     ec0:	5f4e494d 	svcpl	0x004e494d
     ec4:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
     ec8:	4c4c5530 	cfstr64mi	mvdx5, [ip], {48}	; 0x30
     ecc:	5f5f0052 	svcpl	0x005f0052
     ed0:	5f4c4244 	svcpl	0x004c4244
     ed4:	5f534148 	svcpl	0x00534148
     ed8:	45495551 	strbmi	r5, [r9, #-1361]	; 0xfffffaaf
     edc:	414e5f54 	cmpmi	lr, r4, asr pc
     ee0:	205f5f4e 	subscs	r5, pc, lr, asr #30
     ee4:	52720031 	rsbspl	r0, r2, #49	; 0x31
     ee8:	00525354 	subseq	r5, r2, r4, asr r3
     eec:	464c5f5f 			; <UNDEFINED> instruction: 0x464c5f5f
     ef0:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     ef4:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
     ef8:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
     efc:	30205f5f 	eorcc	r5, r0, pc, asr pc
     f00:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
     f04:	524c3133 	subpl	r3, ip, #-1073741812	; 0xc000000c
     f08:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     f0c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
     f10:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
     f14:	5059545f 	subspl	r5, r9, pc, asr r4
     f18:	205f5f45 	subscs	r5, pc, r5, asr #30
     f1c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     f20:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
     f24:	445f3254 	ldrbmi	r3, [pc], #-596	; f2c <g_pfnVectors-0x7fff0d4>
     f28:	55282052 	strpl	r2, [r8, #-82]!	; 0xffffffae
     f2c:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
     f30:	723e2d32 	eorsvc	r2, lr, #3200	; 0xc80
     f34:	00295244 	eoreq	r5, r9, r4, asr #4
     f38:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     f3c:	5f343654 	svcpl	0x00343654
     f40:	5f534148 	svcpl	0x00534148
     f44:	49464e49 	stmdbmi	r6, {r0, r3, r6, r9, sl, fp, lr}^
     f48:	5954494e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, fp, lr}^
     f4c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     f50:	41535500 	cmpmi	r3, r0, lsl #10
     f54:	20325452 	eorscs	r5, r2, r2, asr r4
     f58:	45522828 	ldrbmi	r2, [r2, #-2088]	; 0xfffff7d8
     f5c:	53555f47 	cmppl	r5, #284	; 0x11c
     f60:	2a545241 	bcs	151586c <g_pfnVectors-0x6aea794>
     f64:	41535529 	cmpmi	r3, r9, lsr #10
     f68:	5f325452 	svcpl	0x00325452
     f6c:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     f70:	4f720029 	svcmi	0x00720029
     f74:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     f78:	5f5f0052 	svcpl	0x005f0052
     f7c:	33544c46 	cmpcc	r4, #17920	; 0x4600
     f80:	445f5832 	ldrbmi	r5, [pc], #-2098	; f88 <g_pfnVectors-0x7fff078>
     f84:	524f4e45 	subpl	r4, pc, #1104	; 0x450
     f88:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     f8c:	205f5f4e 	subscs	r5, pc, lr, asr #30
     f90:	34392e34 	ldrtcc	r2, [r9], #-3636	; 0xfffff1cc
     f94:	36353630 			; <UNDEFINED> instruction: 0x36353630
     f98:	34383534 	ldrtcc	r3, [r8], #-1332	; 0xfffffacc
     f9c:	36343231 			; <UNDEFINED> instruction: 0x36343231
     fa0:	2d653435 	cfstrdcs	mvd3, [r5, #-212]!	; 0xffffff2c
     fa4:	46343233 			; <UNDEFINED> instruction: 0x46343233
     fa8:	00783233 	rsbseq	r3, r8, r3, lsr r2
     fac:	52415f5f 	subpl	r5, r1, #380	; 0x17c
     fb0:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
     fb4:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
     fb8:	50465f45 	subpl	r5, r6, r5, asr #30
     fbc:	535f3631 	cmppl	pc, #51380224	; 0x3100000
     fc0:	414c4143 	cmpmi	ip, r3, asr #2
     fc4:	52415f52 	subpl	r5, r1, #328	; 0x148
     fc8:	4d485449 	cfstrdmi	mvd5, [r8, #-292]	; 0xfffffedc
     fcc:	43495445 	movtmi	r5, #37957	; 0x9445
     fd0:	535f5f00 	cmppl	pc, #0, 30
     fd4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     fd8:	42465f4d 	submi	r5, r6, #308	; 0x134
     fdc:	5f5f5449 	svcpl	0x005f5449
     fe0:	5f003720 	svcpl	0x00003720
     fe4:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
     fe8:	545f5241 	ldrbpl	r5, [pc], #-577	; ff0 <g_pfnVectors-0x7fff010>
     fec:	5f455059 	svcpl	0x00455059
     ff0:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
     ff4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     ff8:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     ffc:	5500746e 	strpl	r7, [r0, #-1134]	; 0xfffffb92
    1000:	535f4553 	cmppl	pc, #348127232	; 0x14c00000
    1004:	45504454 	ldrbmi	r4, [r0, #-1108]	; 0xfffffbac
    1008:	48504952 	ldmdami	r0, {r1, r4, r6, r8, fp, lr}^
    100c:	4952445f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, sl, lr}^
    1010:	20524556 	subscs	r4, r2, r6, asr r5
    1014:	5f5f0031 	svcpl	0x005f0031
    1018:	5f4c4244 	svcpl	0x004c4244
    101c:	5f4e494d 	svcpl	0x004e494d
    1020:	2828205f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, sp}
    1024:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    1028:	3229656c 	eorcc	r6, r9, #108, 10	; 0x1b000000
    102c:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
    1030:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
    1034:	30353835 	eorscc	r3, r5, r5, lsr r8
    1038:	31303237 	teqcc	r0, r7, lsr r2
    103c:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    1040:	294c3830 	stmdbcs	ip, {r4, r5, fp, ip, sp}^
    1044:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1048:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    104c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1050:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    1054:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
    1058:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
    105c:	30353835 	eorscc	r3, r5, r5, lsr r8
    1060:	31303237 	teqcc	r0, r7, lsr r2
    1064:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    1068:	36463830 			; <UNDEFINED> instruction: 0x36463830
    106c:	5f5f0034 	svcpl	0x005f0034
    1070:	36434544 	strbcc	r4, [r3], -r4, asr #10
    1074:	414d5f34 	cmpmi	sp, r4, lsr pc
    1078:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    107c:	39392e39 	ldmdbcc	r9!, {r0, r3, r4, r5, r9, sl, fp, sp}
    1080:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1084:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1088:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    108c:	38334539 	ldmdacc	r3!, {r0, r3, r4, r5, r8, sl, lr}
    1090:	00444434 	subeq	r4, r4, r4, lsr r4
    1094:	52465f5f 	subpl	r5, r6, #380	; 0x17c
    1098:	5f544341 	svcpl	0x00544341
    109c:	5f4e494d 	svcpl	0x004e494d
    10a0:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    10a4:	52352e30 	eorspl	r2, r5, #48, 28	; 0x300
    10a8:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    10ac:	52002952 	andpl	r2, r0, #1343488	; 0x148000
    10b0:	415f4343 	cmpmi	pc, r3, asr #6
    10b4:	45314248 	ldrmi	r4, [r1, #-584]!	; 0xfffffdb8
    10b8:	2820524e 	stmdacs	r0!, {r1, r2, r3, r6, r9, ip, lr}
    10bc:	2d434352 	stclcs	3, cr4, [r3, #-328]	; 0xfffffeb8
    10c0:	4352723e 	cmpmi	r2, #-536870909	; 0xe0000003
    10c4:	48415f43 	stmdami	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    10c8:	4e453142 	dvfmism	f3, f5, f2
    10cc:	5f002952 	svcpl	0x00002952
    10d0:	4343475f 	movtmi	r4, #14175	; 0x375f
    10d4:	4f54415f 	svcmi	0x0054415f
    10d8:	5f43494d 	svcpl	0x0043494d
    10dc:	5f544e49 	svcpl	0x00544e49
    10e0:	4b434f4c 	blmi	10d4e18 <g_pfnVectors-0x6f2b1e8>
    10e4:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    10e8:	00322045 	eorseq	r2, r2, r5, asr #32
    10ec:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    10f0:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    10f4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    10f8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    10fc:	66663778 			; <UNDEFINED> instruction: 0x66663778
    1100:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1104:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1108:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    110c:	004c4c66 	subeq	r4, ip, r6, ror #24
    1110:	41555f5f 	cmpmi	r5, pc, asr pc
    1114:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1118:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    111c:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1120:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1124:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1128:	4b553631 	blmi	154e9f4 <g_pfnVectors-0x6ab160c>
    112c:	535f5f00 	cmppl	pc, #0, 30
    1130:	42495f51 	submi	r5, r9, #324	; 0x144
    1134:	5f5f5449 	svcpl	0x005f5449
    1138:	5f003020 	svcpl	0x00003020
    113c:	4343415f 	movtmi	r4, #12639	; 0x315f
    1140:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
    1144:	5f544942 	svcpl	0x00544942
    1148:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    114c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1150:	5f4c4244 	svcpl	0x004c4244
    1154:	4f4e4544 	svcmi	0x004e4544
    1158:	4d5f4d52 	ldclmi	13, cr4, [pc, #-328]	; 1018 <g_pfnVectors-0x7ffefe8>
    115c:	5f5f4e49 	svcpl	0x005f4e49
    1160:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
    1164:	35363034 	ldrcc	r3, [r6, #-52]!	; 0xffffffcc
    1168:	38353436 	ldmdacc	r5!, {r1, r2, r4, r5, sl, ip, sp}
    116c:	34323134 	ldrtcc	r3, [r2], #-308	; 0xfffffecc
    1170:	65343536 	ldrvs	r3, [r4, #-1334]!	; 0xfffffaca
    1174:	3432332d 	ldrtcc	r3, [r2], #-813	; 0xfffffcd3
    1178:	5f5f004c 	svcpl	0x005f004c
    117c:	43415355 	movtmi	r5, #4949	; 0x1355
    1180:	5f4d5543 	svcpl	0x004d5543
    1184:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1188:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    118c:	535f5f00 	cmppl	pc, #0, 30
    1190:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1194:	42495f4d 	submi	r5, r9, #308	; 0x134
    1198:	5f5f5449 	svcpl	0x005f5449
    119c:	5f003820 	svcpl	0x00003820
    11a0:	5a49535f 	bpl	1255f24 <g_pfnVectors-0x6daa0dc>
    11a4:	5f464f45 	svcpl	0x00464f45
    11a8:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    11ac:	5f464649 	svcpl	0x00464649
    11b0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    11b4:	5f5f0034 	svcpl	0x005f0034
    11b8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    11bc:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 10ec <g_pfnVectors-0x7ffef14>
    11c0:	5f5f5841 	svcpl	0x005f5841
    11c4:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    11c8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    11cc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    11d0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    11d4:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    11d8:	5f004c4c 	svcpl	0x00004c4c
    11dc:	5246535f 	subpl	r5, r6, #2080374785	; 0x7c000001
    11e0:	5f544341 	svcpl	0x00544341
    11e4:	5f4e494d 	svcpl	0x004e494d
    11e8:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    11ec:	48352e30 	ldmdami	r5!, {r4, r5, r9, sl, fp, sp}
    11f0:	2e302d52 	mrccs	13, 1, r2, cr0, cr2, {2}
    11f4:	29524835 	ldmdbcs	r2, {r0, r2, r4, r5, fp, lr}^
    11f8:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    11fc:	4343414c 	movtmi	r4, #12620	; 0x314c
    1200:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
    1204:	5f544942 	svcpl	0x00544942
    1208:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    120c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1214 <g_pfnVectors-0x7ffedec>
    1210:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
    1214:	414d5f38 	cmpmi	sp, r8, lsr pc
    1218:	445f544e 	ldrbmi	r5, [pc], #-1102	; 1220 <g_pfnVectors-0x7ffede0>
    121c:	5f5f4749 	svcpl	0x005f4749
    1220:	00343320 	eorseq	r3, r4, r0, lsr #6
    1224:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    1228:	52415f4d 	subpl	r5, r1, #308	; 0x134
    122c:	455f4843 	ldrbmi	r4, [pc, #-2115]	; 9f1 <g_pfnVectors-0x7fff60f>
    1230:	495f5458 	ldmdbmi	pc, {r3, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    1234:	5f564944 	svcpl	0x00564944
    1238:	0031205f 	eorseq	r2, r1, pc, asr r0
    123c:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    1240:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    1244:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    1248:	4e555f45 	cdpmi	15, 5, cr5, cr5, cr5, {2}
    124c:	47494c41 	strbmi	r4, [r9, -r1, asr #24]
    1250:	2044454e 	subcs	r4, r4, lr, asr #10
    1254:	53550031 	cmppl	r5, #49	; 0x31
    1258:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
    125c:	3152435f 	cmpcc	r2, pc, asr r3
    1260:	53552820 	cmppl	r5, #32, 16	; 0x200000
    1264:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
    1268:	43723e2d 	cmnmi	r2, #720	; 0x2d0
    126c:	00293152 	eoreq	r3, r9, r2, asr r1
    1270:	49575372 	ldmdbmi	r7, {r1, r4, r5, r6, r8, r9, ip, lr}^
    1274:	5f005245 	svcpl	0x00005245
    1278:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    127c:	5f323354 	svcpl	0x00323354
    1280:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    1284:	23206320 			; <UNDEFINED> instruction: 0x23206320
    1288:	4c552023 	mrrcmi	0, 2, r2, r5, cr3
    128c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1294 <g_pfnVectors-0x7ffed6c>
    1290:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    1294:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1298:	5058455f 	subspl	r4, r8, pc, asr r5
    129c:	39205f5f 	stmdbcc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    12a0:	53550037 	cmppl	r5, #55	; 0x37
    12a4:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
    12a8:	3352435f 	cmpcc	r2, #2080374785	; 0x7c000001
    12ac:	53552820 	cmppl	r5, #32, 16	; 0x200000
    12b0:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
    12b4:	43723e2d 	cmnmi	r2, #720	; 0x2d0
    12b8:	00293352 	eoreq	r3, r9, r2, asr r3
    12bc:	4f495047 	svcmi	0x00495047
    12c0:	46415f44 	strbmi	r5, [r1], -r4, asr #30
    12c4:	28204852 	stmdacs	r0!, {r1, r4, r6, fp, lr}
    12c8:	4f495047 	svcmi	0x00495047
    12cc:	723e2d44 	eorsvc	r2, lr, #68, 26	; 0x1100
    12d0:	48524641 	ldmdami	r2, {r0, r6, r9, sl, lr}^
    12d4:	5f5f0029 	svcpl	0x005f0029
    12d8:	4d554854 	ldclmi	8, cr4, [r5, #-336]	; 0xfffffeb0
    12dc:	5f4c4542 	svcpl	0x004c4542
    12e0:	0031205f 	eorseq	r2, r1, pc, asr r0
    12e4:	41445f5f 	cmpmi	r4, pc, asr pc
    12e8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    12ec:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    12f0:	5f003233 	svcpl	0x00003233
    12f4:	4749425f 	smlsldmi	r4, r9, pc, r2	; <UNPREDICTABLE>
    12f8:	54534547 	ldrbpl	r4, [r3], #-1351	; 0xfffffab9
    12fc:	494c415f 	stmdbmi	ip, {r0, r1, r2, r3, r4, r6, r8, lr}^
    1300:	454d4e47 	strbmi	r4, [sp, #-3655]	; 0xfffff1b9
    1304:	5f5f544e 	svcpl	0x005f544e
    1308:	5f003820 	svcpl	0x00003820
    130c:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
    1310:	5f4d5543 	svcpl	0x004d5543
    1314:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    1318:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    131c:	5f5f0032 	svcpl	0x005f0032
    1320:	52465355 	subpl	r5, r6, #1409286145	; 0x54000001
    1324:	5f544341 	svcpl	0x00544341
    1328:	5f58414d 	svcpl	0x0058414d
    132c:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1330:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    1334:	52485538 	subpl	r5, r8, #56, 10	; 0xe000000
    1338:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 440 <g_pfnVectors-0x7fffbc0>
    133c:	5f544e49 	svcpl	0x00544e49
    1340:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    1344:	414d5f38 	cmpmi	sp, r8, lsr pc
    1348:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    134c:	66667830 			; <UNDEFINED> instruction: 0x66667830
    1350:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1354:	00556666 	subseq	r6, r5, r6, ror #12
    1358:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
    135c:	5f524544 	svcpl	0x00524544
    1360:	5454494c 	ldrbpl	r4, [r4], #-2380	; 0xfffff6b4
    1364:	455f454c 	ldrbmi	r4, [pc, #-1356]	; e20 <g_pfnVectors-0x7fff1e0>
    1368:	4149444e 	cmpmi	r9, lr, asr #8
    136c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1370:	34333231 	ldrtcc	r3, [r3], #-561	; 0xfffffdcf
    1374:	54467200 	strbpl	r7, [r6], #-512	; 0xfffffe00
    1378:	5f005253 	svcpl	0x00005253
    137c:	414c4c5f 	cmpmi	ip, pc, asr ip
    1380:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1384:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1388:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    138c:	3158302d 	cmpcc	r8, sp, lsr #32
    1390:	4c313350 	ldcmi	3, cr3, [r1], #-320	; 0xfffffec0
    1394:	302d4b4c 	eorcc	r4, sp, ip, asr #22
    1398:	33503158 	cmpcc	r0, #88, 2
    139c:	4b4c4c31 	blmi	1314468 <g_pfnVectors-0x6cebb98>
    13a0:	5f5f0029 	svcpl	0x005f0029
    13a4:	53524556 	cmppl	r2, #360710144	; 0x15800000
    13a8:	5f4e4f49 	svcpl	0x004e4f49
    13ac:	3822205f 	stmdacc	r2!, {r0, r1, r2, r3, r4, r6, sp}
    13b0:	312e322e 			; <UNDEFINED> instruction: 0x312e322e
    13b4:	31303220 	teqcc	r0, r0, lsr #4
    13b8:	31323138 	teqcc	r2, r8, lsr r1
    13bc:	72282033 	eorvc	r2, r8, #51	; 0x33
    13c0:	61656c65 	cmnvs	r5, r5, ror #24
    13c4:	20296573 	eorcs	r6, r9, r3, ror r5
    13c8:	6363675b 	cmnvs	r3, #23855104	; 0x16c0000
    13cc:	622d382d 	eorvs	r3, sp, #2949120	; 0x2d0000
    13d0:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
    13d4:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
    13d8:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
    13dc:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
    13e0:	37303736 			; <UNDEFINED> instruction: 0x37303736
    13e4:	00225d34 	eoreq	r5, r2, r4, lsr sp
    13e8:	41535f5f 	cmpmi	r3, pc, asr pc
    13ec:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    13f0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    13f4:	5f003531 	svcpl	0x00003531
    13f8:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    13fc:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 132c <g_pfnVectors-0x7ffecd4>
    1400:	315f4e49 	cmpcc	pc, r9, asr #28
    1404:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    1408:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    140c:	30332d28 	eorscc	r2, r3, r8, lsr #26
    1410:	5f002937 	svcpl	0x00002937
    1414:	4341535f 	movtmi	r5, #4959	; 0x135f
    1418:	5f4d5543 	svcpl	0x004d5543
    141c:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    1420:	5f4e4f4c 	svcpl	0x004e4f4c
    1424:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1428:	372d5031 			; <UNDEFINED> instruction: 0x372d5031
    142c:	5f004b48 	svcpl	0x00004b48
    1430:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1434:	5341465f 	movtpl	r4, #5727	; 0x165f
    1438:	5f363154 	svcpl	0x00363154
    143c:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    1440:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    1444:	5f00746e 	svcpl	0x0000746e
    1448:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    144c:	445f3233 	ldrbmi	r3, [pc], #-563	; 1454 <g_pfnVectors-0x7ffebac>
    1450:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
    1454:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 145c <g_pfnVectors-0x7ffeba4>
    1458:	5f5f4749 	svcpl	0x005f4749
    145c:	5f003920 	svcpl	0x00003920
    1460:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    1464:	5f363154 	svcpl	0x00363154
    1468:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    146c:	73205f5f 			; <UNDEFINED> instruction: 0x73205f5f
    1470:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
    1474:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    1478:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    147c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    1480:	52720074 	rsbspl	r0, r2, #116	; 0x74
    1484:	415f4343 	cmpmi	pc, r3, asr #6
    1488:	45314248 	ldrmi	r4, [r1, #-584]!	; 0xfffffdb8
    148c:	4700524e 	strmi	r5, [r0, -lr, asr #4]
    1490:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
    1494:	5055505f 	subspl	r5, r5, pc, asr r0
    1498:	28205244 	stmdacs	r0!, {r2, r6, r9, ip, lr}
    149c:	4f495047 	svcmi	0x00495047
    14a0:	723e2d41 	eorsvc	r2, lr, #4160	; 0x1040
    14a4:	44505550 	ldrbmi	r5, [r0], #-1360	; 0xfffffab0
    14a8:	5f002952 	svcpl	0x00002952
    14ac:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    14b0:	575f5241 	ldrbpl	r5, [pc, -r1, asr #4]
    14b4:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    14b8:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    14bc:	5f5f0032 	svcpl	0x005f0032
    14c0:	33544c46 	cmpcc	r4, #17920	; 0x4600
    14c4:	41485f32 	cmpmi	r8, r2, lsr pc
    14c8:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
    14cc:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
    14d0:	5f5f5954 	svcpl	0x005f5954
    14d4:	5f003120 	svcpl	0x00003120
    14d8:	5148555f 	cmppl	r8, pc, asr r5
    14dc:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    14e0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    14e4:	5f5f0030 	svcpl	0x005f0030
    14e8:	41524655 	cmpmi	r2, r5, asr r6
    14ec:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    14f0:	5f544942 	svcpl	0x00544942
    14f4:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    14f8:	505f5f00 	subspl	r5, pc, r0, lsl #30
    14fc:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    1500:	545f4646 	ldrbpl	r4, [pc], #-1606	; 1508 <g_pfnVectors-0x7ffeaf8>
    1504:	5f455059 	svcpl	0x00455059
    1508:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
    150c:	5f5f0074 	svcpl	0x005f0074
    1510:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    1514:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    1518:	414d5f47 	cmpmi	sp, r7, asr #30
    151c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1520:	66377830 			; <UNDEFINED> instruction: 0x66377830
    1524:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1528:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    152c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1530:	4c4c6666 	mcrrmi	6, 6, r6, ip, cr6
    1534:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1538:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    153c:	5059545f 	subspl	r5, r9, pc, asr r4
    1540:	205f5f45 	subscs	r5, pc, r5, asr #30
    1544:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    1548:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    154c:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
    1550:	5f5f0074 	svcpl	0x005f0074
    1554:	5f544c46 	svcpl	0x00544c46
    1558:	5f58414d 	svcpl	0x0058414d
    155c:	455f3031 	ldrbmi	r3, [pc, #-49]	; 1533 <g_pfnVectors-0x7ffeacd>
    1560:	5f5f5058 	svcpl	0x005f5058
    1564:	00383320 	eorseq	r3, r8, r0, lsr #6
    1568:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    156c:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1570:	414d5f4d 	cmpmi	sp, sp, asr #30
    1574:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1578:	46375830 			; <UNDEFINED> instruction: 0x46375830
    157c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1580:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1584:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1588:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    158c:	4c4c3133 	stfmie	f3, [ip], {51}	; 0x33
    1590:	5845004b 	stmdapl	r5, {r0, r1, r3, r6}^
    1594:	465f4954 			; <UNDEFINED> instruction: 0x465f4954
    1598:	20525354 	subscs	r5, r2, r4, asr r3
    159c:	54584528 	ldrbpl	r4, [r8], #-1320	; 0xfffffad8
    15a0:	723e2d49 	eorsvc	r2, lr, #4672	; 0x1240
    15a4:	52535446 	subspl	r5, r3, #1174405120	; 0x46000000
    15a8:	58450029 	stmdapl	r5, {r0, r3, r5}^
    15ac:	455f4954 	ldrbmi	r4, [pc, #-2388]	; c60 <g_pfnVectors-0x7fff3a0>
    15b0:	2820524d 	stmdacs	r0!, {r0, r2, r3, r6, r9, ip, lr}
    15b4:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    15b8:	45723e2d 	ldrbmi	r3, [r2, #-3629]!	; 0xfffff1d3
    15bc:	0029524d 	eoreq	r5, r9, sp, asr #4
    15c0:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    15c4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    15c8:	50455f4d 	subpl	r5, r5, sp, asr #30
    15cc:	4f4c4953 	svcmi	0x004c4953
    15d0:	205f5f4e 	subscs	r5, pc, lr, asr #30
    15d4:	50317830 	eorspl	r7, r1, r0, lsr r8
    15d8:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    15dc:	5f004b4c 	svcpl	0x00004b4c
    15e0:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    15e4:	43415246 	movtmi	r5, #4678	; 0x1246
    15e8:	42495f54 	submi	r5, r9, #84, 30	; 0x150
    15ec:	5f5f5449 	svcpl	0x005f5449
    15f0:	5f003020 	svcpl	0x00003020
    15f4:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    15f8:	4145465f 	cmpmi	r5, pc, asr r6
    15fc:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    1600:	504f435f 	subpl	r4, pc, pc, asr r3	; <UNPREDICTABLE>
    1604:	00434f52 	subeq	r4, r3, r2, asr pc
    1608:	4f4e5f5f 	svcmi	0x004e5f5f
    160c:	4c4e495f 	mcrrmi	9, 5, r4, lr, cr15	; <UNPREDICTABLE>
    1610:	5f454e49 	svcpl	0x00454e49
    1614:	0031205f 	eorseq	r2, r1, pc, asr r0
    1618:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    161c:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    1620:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1624:	5058455f 	subspl	r4, r8, pc, asr r5
    1628:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    162c:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    1630:	53002932 	movwpl	r2, #2354	; 0x932
    1634:	46435359 			; <UNDEFINED> instruction: 0x46435359
    1638:	58455f47 	stmdapl	r5, {r0, r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    163c:	52434954 	subpl	r4, r3, #84, 18	; 0x150000
    1640:	53282031 			; <UNDEFINED> instruction: 0x53282031
    1644:	46435359 			; <UNDEFINED> instruction: 0x46435359
    1648:	723e2d47 	eorsvc	r2, lr, #4544	; 0x11c0
    164c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1650:	29315243 	ldmdbcs	r1!, {r0, r1, r6, r9, ip, lr}
    1654:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 75c <g_pfnVectors-0x7fff8a4>
    1658:	4152464c 	cmpmi	r2, ip, asr #12
    165c:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1558 <g_pfnVectors-0x7ffeaa8>
    1660:	5f5f4e49 	svcpl	0x005f4e49
    1664:	302e3020 	eorcc	r3, lr, r0, lsr #32
    1668:	00524c55 	subseq	r4, r2, r5, asr ip
    166c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1670:	414d5f54 	cmpmi	sp, r4, asr pc
    1674:	445f544e 	ldrbmi	r5, [pc], #-1102	; 167c <g_pfnVectors-0x7ffe984>
    1678:	5f5f4749 	svcpl	0x005f4749
    167c:	00343220 	eorseq	r3, r4, r0, lsr #4
    1680:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    1684:	52415f4d 	subpl	r5, r1, #308	; 0x134
    1688:	5f004843 	svcpl	0x00004843
    168c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    1690:	445f3436 	ldrbmi	r3, [pc], #-1078	; 1698 <g_pfnVectors-0x7ffe968>
    1694:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
    1698:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 16a0 <g_pfnVectors-0x7ffe960>
    169c:	5f5f4749 	svcpl	0x005f4749
    16a0:	00373120 	eorseq	r3, r7, r0, lsr #2
    16a4:	45525f5f 	ldrbmi	r5, [r2, #-3935]	; 0xfffff0a1
    16a8:	54534947 	ldrbpl	r4, [r3], #-2375	; 0xfffff6b9
    16ac:	505f5245 	subspl	r5, pc, r5, asr #4
    16b0:	49464552 	stmdbmi	r6, {r1, r4, r6, r8, sl, lr}^
    16b4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    16b8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    16bc:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    16c0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    16c4:	5058455f 	subspl	r4, r8, pc, asr r5
    16c8:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    16cc:	3532312d 	ldrcc	r3, [r2, #-301]!	; 0xfffffed3
    16d0:	50470029 	subpl	r0, r7, r9, lsr #32
    16d4:	20444f49 	subcs	r4, r4, r9, asr #30
    16d8:	45522828 	ldrbmi	r2, [r2, #-2088]	; 0xfffff7d8
    16dc:	50475f47 	subpl	r5, r7, r7, asr #30
    16e0:	292a4f49 	stmdbcs	sl!, {r0, r3, r6, r8, r9, sl, fp, lr}
    16e4:	4f495047 	svcmi	0x00495047
    16e8:	41425f44 	cmpmi	r2, r4, asr #30
    16ec:	00294553 	eoreq	r4, r9, r3, asr r5
    16f0:	41555f5f 	cmpmi	r5, pc, asr pc
    16f4:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    16f8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    16fc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1700:	5f003631 	svcpl	0x00003631
    1704:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    1708:	41465f54 	cmpmi	r6, r4, asr pc
    170c:	36315453 			; <UNDEFINED> instruction: 0x36315453
    1710:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1714:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1718:	66666678 			; <UNDEFINED> instruction: 0x66666678
    171c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1720:	5f005566 	svcpl	0x00005566
    1724:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    1728:	41465f54 	cmpmi	r6, r4, asr pc
    172c:	36315453 			; <UNDEFINED> instruction: 0x36315453
    1730:	5059545f 	subspl	r5, r9, pc, asr r4
    1734:	205f5f45 	subscs	r5, pc, r5, asr #30
    1738:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    173c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    1740:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    1744:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 174c <g_pfnVectors-0x7ffe8b4>
    1748:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 1648 <g_pfnVectors-0x7ffe9b8>
    174c:	315f4e49 	cmpcc	pc, r9, asr #28
    1750:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    1754:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    1758:	30332d28 	eorscc	r2, r3, r8, lsr #26
    175c:	5f002937 	svcpl	0x00002937
    1760:	4153555f 	cmpmi	r3, pc, asr r5
    1764:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1768:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    176c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1770:	49540038 	ldmdbmi	r4, {r3, r4, r5}^
    1774:	505f324d 	subspl	r3, pc, sp, asr #4
    1778:	28204353 	stmdacs	r0!, {r0, r1, r4, r6, r8, r9, lr}
    177c:	324d4954 	subcc	r4, sp, #84, 18	; 0x150000
    1780:	50723e2d 	rsbspl	r3, r2, sp, lsr #28
    1784:	00294353 	eoreq	r4, r9, r3, asr r3
    1788:	58475f5f 	stmdapl	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    178c:	42415f58 	submi	r5, r1, #88, 30	; 0x160
    1790:	45565f49 	ldrbmi	r5, [r6, #-3913]	; 0xfffff0b7
    1794:	4f495352 	svcmi	0x00495352
    1798:	3031204e 	eorscc	r2, r1, lr, asr #32
    179c:	5f003331 	svcpl	0x00003331
    17a0:	4144555f 	cmpmi	r4, pc, asr r5
    17a4:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    17a8:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    17ac:	5f003233 	svcpl	0x00003233
    17b0:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    17b4:	445f3233 	ldrbmi	r3, [pc], #-563	; 17bc <g_pfnVectors-0x7ffe844>
    17b8:	5f5f4749 	svcpl	0x005f4749
    17bc:	5f003620 	svcpl	0x00003620
    17c0:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    17c4:	485f3436 	ldmdami	pc, {r1, r2, r4, r5, sl, ip, sp}^	; <UNPREDICTABLE>
    17c8:	445f5341 	ldrbmi	r5, [pc], #-833	; 17d0 <g_pfnVectors-0x7ffe830>
    17cc:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    17d0:	205f5f4d 	subscs	r5, pc, sp, asr #30
    17d4:	5f5f0031 	svcpl	0x005f0031
    17d8:	5f544c46 	svcpl	0x00544c46
    17dc:	4c415645 	mcrrmi	6, 4, r5, r1, cr5
    17e0:	54454d5f 	strbpl	r4, [r5], #-3423	; 0xfffff2a1
    17e4:	5f444f48 	svcpl	0x00444f48
    17e8:	0030205f 	eorseq	r2, r0, pc, asr r0
    17ec:	65736572 	ldrbvs	r6, [r3, #-1394]!	; 0xfffffa8e
    17f0:	64657672 	strbtvs	r7, [r5], #-1650	; 0xfffff98e
    17f4:	5f003031 	svcpl	0x00003031
    17f8:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    17fc:	5f583233 	svcpl	0x00583233
    1800:	5f534148 	svcpl	0x00534148
    1804:	4f4e4544 	svcmi	0x004e4544
    1808:	5f5f4d52 	svcpl	0x005f4d52
    180c:	47003120 	strmi	r3, [r0, -r0, lsr #2]
    1810:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
    1814:	38203731 	stmdacc	r0!, {r0, r4, r5, r8, r9, sl, ip, sp}
    1818:	312e322e 			; <UNDEFINED> instruction: 0x312e322e
    181c:	31303220 	teqcc	r0, r0, lsr #4
    1820:	31323138 	teqcc	r2, r8, lsr r1
    1824:	72282033 	eorvc	r2, r8, #51	; 0x33
    1828:	61656c65 	cmnvs	r5, r5, ror #24
    182c:	20296573 	eorcs	r6, r9, r3, ror r5
    1830:	6363675b 	cmnvs	r3, #23855104	; 0x16c0000
    1834:	622d382d 	eorvs	r3, sp, #2949120	; 0x2d0000
    1838:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
    183c:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
    1840:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
    1844:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
    1848:	37303736 			; <UNDEFINED> instruction: 0x37303736
    184c:	2d205d34 	stccs	13, cr5, [r0, #-208]!	; 0xffffff30
    1850:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
    1854:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
    1858:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
    185c:	2d20346d 	cfstrscs	mvf3, [r0, #-436]!	; 0xfffffe4c
    1860:	7568746d 	strbvc	r7, [r8, #-1133]!	; 0xfffffb93
    1864:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	; 0xfffffe4c
    1868:	6f6c666d 	svcvs	0x006c666d
    186c:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
    1870:	683d6962 	ldmdavs	sp!, {r1, r5, r6, r8, fp, sp, lr}
    1874:	20647261 	rsbcs	r7, r4, r1, ror #4
    1878:	70666d2d 	rsbvc	r6, r6, sp, lsr #26
    187c:	70663d75 	rsbvc	r3, r6, r5, ror sp
    1880:	732d3476 			; <UNDEFINED> instruction: 0x732d3476
    1884:	31642d70 	smccc	17104	; 0x42d0
    1888:	6d2d2036 	stcvs	0, cr2, [sp, #-216]!	; 0xffffff28
    188c:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
    1890:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
    1894:	2d653776 	stclcs	7, cr3, [r5, #-472]!	; 0xfffffe28
    1898:	70662b6d 	rsbvc	r2, r6, sp, ror #22
    189c:	33672d20 	cmncc	r7, #32, 26	; 0x800
    18a0:	304f2d20 	subcc	r2, pc, r0, lsr #26
    18a4:	6d662d20 	stclvs	13, cr2, [r6, #-128]!	; 0xffffff80
    18a8:	61737365 	cmnvs	r3, r5, ror #6
    18ac:	6c2d6567 	cfstr32vs	mvfx6, [sp], #-412	; 0xfffffe64
    18b0:	74676e65 	strbtvc	r6, [r7], #-3685	; 0xfffff19b
    18b4:	20303d68 	eorscs	r3, r0, r8, ror #26
    18b8:	7566662d 	strbvc	r6, [r6, #-1581]!	; 0xfffff9d3
    18bc:	6974636e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    18c0:	732d6e6f 			; <UNDEFINED> instruction: 0x732d6e6f
    18c4:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
    18c8:	00736e6f 	rsbseq	r6, r3, pc, ror #28
    18cc:	4f495047 	svcmi	0x00495047
    18d0:	44495f41 	strbmi	r5, [r9], #-3905	; 0xfffff0bf
    18d4:	47282052 			; <UNDEFINED> instruction: 0x47282052
    18d8:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
    18dc:	49723e2d 	ldmdbmi	r2!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
    18e0:	00295244 	eoreq	r5, r9, r4, asr #4
    18e4:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    18e8:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    18ec:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    18f0:	4c435f45 	mcrrmi	15, 4, r5, r3, cr5
    18f4:	0031205a 	eorseq	r2, r1, sl, asr r0
    18f8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    18fc:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    1900:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    1904:	414d5f34 	cmpmi	sp, r4, lsr pc
    1908:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    190c:	66377830 			; <UNDEFINED> instruction: 0x66377830
    1910:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1914:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1918:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    191c:	4c4c6666 	mcrrmi	6, 6, r6, ip, cr6
    1920:	415f5f00 	cmpmi	pc, r0, lsl #30
    1924:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1928:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    192c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1930:	5f003531 	svcpl	0x00003531
    1934:	4345445f 	movtmi	r4, #21599	; 0x545f
    1938:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 1868 <g_pfnVectors-0x7ffe798>
    193c:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; afb <g_pfnVectors-0x7fff505>
    1940:	5f5f5058 	svcpl	0x005f5058
    1944:	332d2820 			; <UNDEFINED> instruction: 0x332d2820
    1948:	00293238 	eoreq	r3, r9, r8, lsr r2
    194c:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    1950:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1954:	42495f4d 	submi	r5, r9, #308	; 0x134
    1958:	5f5f5449 	svcpl	0x005f5449
    195c:	00323320 	eorseq	r3, r2, r0, lsr #6
    1960:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    1964:	43415246 	movtmi	r5, #4678	; 0x1246
    1968:	42465f54 	submi	r5, r6, #84, 30	; 0x150
    196c:	5f5f5449 	svcpl	0x005f5449
    1970:	00333620 	eorseq	r3, r3, r0, lsr #12
    1974:	41555f5f 	cmpmi	r5, pc, asr pc
    1978:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    197c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1980:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1984:	4b55302e 	blmi	154da44 <g_pfnVectors-0x6ab25bc>
    1988:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    198c:	28282049 	stmdacs	r8!, {r0, r3, r6, sp}
    1990:	5f474552 	svcpl	0x00474552
    1994:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1998:	5845292a 	stmdapl	r5, {r1, r3, r5, r8, fp, sp}^
    199c:	425f4954 	subsmi	r4, pc, #84, 18	; 0x150000
    19a0:	29455341 	stmdbcs	r5, {r0, r6, r8, r9, ip, lr}^
    19a4:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    19a8:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    19ac:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    19b0:	49575f38 	ldmdbmi	r7, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    19b4:	5f485444 	svcpl	0x00485444
    19b8:	0038205f 	eorseq	r2, r8, pc, asr r0
    19bc:	54584572 	ldrbpl	r4, [r8], #-1394	; 0xfffffa8e
    19c0:	31524349 	cmpcc	r2, r9, asr #6
    19c4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; acc <g_pfnVectors-0x7fff534>
    19c8:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    19cc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    19d0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    19d4:	00666678 	rsbeq	r6, r6, r8, ror r6
    19d8:	54584572 	ldrbpl	r4, [r8], #-1394	; 0xfffffa8e
    19dc:	33524349 	cmpcc	r2, #603979777	; 0x24000001
    19e0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; ae8 <g_pfnVectors-0x7fff518>
    19e4:	5f544e49 	svcpl	0x00544e49
    19e8:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    19ec:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 191c <g_pfnVectors-0x7ffe6e4>
    19f0:	5f5f5841 	svcpl	0x005f5841
    19f4:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    19f8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    19fc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1a00:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1a04:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    1a08:	5f004c4c 	svcpl	0x00004c4c
    1a0c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    1a10:	5f363154 	svcpl	0x00363154
    1a14:	5f58414d 	svcpl	0x0058414d
    1a18:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1a1c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1a20:	42454400 	submi	r4, r5, #0, 8
    1a24:	31204755 			; <UNDEFINED> instruction: 0x31204755
    1a28:	415f5f00 	cmpmi	pc, r0, lsl #30
    1a2c:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    1a30:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    1a34:	4c5f4552 	cfldr64mi	mvdx4, [pc], {82}	; 0x52
    1a38:	58455244 	stmdapl	r5, {r2, r6, r9, ip, lr}^
    1a3c:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
    1a40:	47455f32 	smlaldxmi	r5, r5, r2, pc	; <UNPREDICTABLE>
    1a44:	54282052 	strtpl	r2, [r8], #-82	; 0xffffffae
    1a48:	2d324d49 	ldccs	13, cr4, [r2, #-292]!	; 0xfffffedc
    1a4c:	4745723e 	smlaldxmi	r7, r5, lr, r2
    1a50:	5f002952 	svcpl	0x00002952
    1a54:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1a58:	5f58414d 	svcpl	0x0058414d
    1a5c:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    1a60:	205f5f48 	subscs	r5, pc, r8, asr #30
    1a64:	5f003436 	svcpl	0x00003436
    1a68:	4345445f 	movtmi	r4, #21599	; 0x545f
    1a6c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 19a8 <g_pfnVectors-0x7ffe658>
    1a70:	5f5f5841 	svcpl	0x005f5841
    1a74:	392e3920 	stmdbcc	lr!, {r5, r8, fp, ip, sp}
    1a78:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1a7c:	36394539 			; <UNDEFINED> instruction: 0x36394539
    1a80:	5f004644 	svcpl	0x00004644
    1a84:	52464c5f 	subpl	r4, r6, #24320	; 0x5f00
    1a88:	5f544341 	svcpl	0x00544341
    1a8c:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1a90:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1a94:	58450031 	stmdapl	r5, {r0, r4, r5}^
    1a98:	495f4954 	ldmdbmi	pc, {r2, r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
    1a9c:	2820524d 	stmdacs	r0!, {r0, r2, r3, r6, r9, ip, lr}
    1aa0:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1aa4:	49723e2d 	ldmdbmi	r2!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
    1aa8:	0029524d 	eoreq	r5, r9, sp, asr #4
    1aac:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    1ab0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    1ab4:	31545341 	cmpcc	r4, r1, asr #6
    1ab8:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    1abc:	5f5f4550 	svcpl	0x005f4550
    1ac0:	6f687320 	svcvs	0x00687320
    1ac4:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
    1ac8:	5f00746e 	svcpl	0x0000746e
    1acc:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    1ad0:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 1a0c <g_pfnVectors-0x7ffe5f4>
    1ad4:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 129b <g_pfnVectors-0x7ffed65>
    1ad8:	5f5f5058 	svcpl	0x005f5058
    1adc:	38323120 	ldmdacc	r2!, {r5, r8, ip, sp}
    1ae0:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    1ae4:	415f4343 	cmpmi	pc, r3, asr #6
    1ae8:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    1aec:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    1af0:	4c5f5241 	lfmmi	f5, 2, [pc], {65}	; 0x41
    1af4:	5f4b434f 	svcpl	0x004b434f
    1af8:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    1afc:	5f003220 	svcpl	0x00003220
    1b00:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    1b04:	54535f43 	ldrbpl	r5, [r3], #-3907	; 0xfffff0bd
    1b08:	495f4344 	ldmdbmi	pc, {r2, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    1b0c:	4e494c4e 	cdpmi	12, 4, cr4, cr9, cr14, {2}
    1b10:	205f5f45 	subscs	r5, pc, r5, asr #30
    1b14:	5f5f0031 	svcpl	0x005f0031
    1b18:	5f4c4244 	svcpl	0x004c4244
    1b1c:	5f474944 	svcpl	0x00474944
    1b20:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    1b24:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    1b28:	415f4343 	cmpmi	pc, r3, asr #6
    1b2c:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    1b30:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    1b34:	36315241 	ldrtcc	r5, [r1], -r1, asr #4
    1b38:	4c5f545f 	cfldrdmi	mvd5, [pc], {95}	; 0x5f
    1b3c:	5f4b434f 	svcpl	0x004b434f
    1b40:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    1b44:	5f003220 	svcpl	0x00003220
    1b48:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1b4c:	5f5f4c45 	svcpl	0x005f4c45
    1b50:	5f003120 	svcpl	0x00003120
    1b54:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1b58:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    1b5c:	53495f48 	movtpl	r5, #40776	; 0x9f48
    1b60:	48545f41 	ldmdami	r4, {r0, r6, r8, r9, sl, fp, ip, lr}^
    1b64:	00424d55 	subeq	r4, r2, r5, asr sp
    1b68:	414c5f5f 	cmpmi	ip, pc, asr pc
    1b6c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1b70:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1b74:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1b78:	5f003133 	svcpl	0x00003133
    1b7c:	5154555f 	cmppl	r4, pc, asr r5
    1b80:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1b84:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1b88:	5f5f0030 	svcpl	0x005f0030
    1b8c:	41524655 	cmpmi	r2, r5, asr r6
    1b90:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 1755 <g_pfnVectors-0x7ffe8ab>
    1b94:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1b98:	5f5f4e4f 	svcpl	0x005f4e4f
    1b9c:	31783020 	cmncc	r8, r0, lsr #32
    1ba0:	36312d50 			; <UNDEFINED> instruction: 0x36312d50
    1ba4:	5f005255 	svcpl	0x00005255
    1ba8:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    1bac:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1bb0:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1bb4:	3537312e 	ldrcc	r3, [r7, #-302]!	; 0xfffffed2
    1bb8:	33343934 	teqcc	r4, #52, 18	; 0xd0000
    1bbc:	32383035 	eorscc	r3, r8, #53	; 0x35
    1bc0:	37383232 			; <UNDEFINED> instruction: 0x37383232
    1bc4:	332d6535 			; <UNDEFINED> instruction: 0x332d6535
    1bc8:	5f004638 	svcpl	0x00004638
    1bcc:	4343475f 	movtmi	r4, #14175	; 0x375f
    1bd0:	4f54415f 	svcmi	0x0054415f
    1bd4:	5f43494d 	svcpl	0x0043494d
    1bd8:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    1bdc:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    1be0:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    1be4:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    1be8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1bec:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    1bf0:	49445f58 	stmdbmi	r4, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1bf4:	205f5f47 	subscs	r5, pc, r7, asr #30
    1bf8:	5f003531 	svcpl	0x00003531
    1bfc:	4343415f 	movtmi	r4, #12639	; 0x315f
    1c00:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; eb3 <g_pfnVectors-0x7fff14d>
    1c04:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1c08:	5f5f4e4f 	svcpl	0x005f4e4f
    1c0c:	31783020 	cmncc	r8, r0, lsr #32
    1c10:	35312d50 	ldrcc	r2, [r1, #-3408]!	; 0xfffff2b0
    1c14:	5f5f004b 	svcpl	0x005f004b
    1c18:	5f514455 	svcpl	0x00514455
    1c1c:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1c20:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    1c24:	5f5f0034 	svcpl	0x005f0034
    1c28:	33544c46 	cmpcc	r4, #17920	; 0x4600
    1c2c:	4d5f5832 	ldclmi	8, cr5, [pc, #-200]	; 1b6c <g_pfnVectors-0x7ffe494>
    1c30:	5f544e41 	svcpl	0x00544e41
    1c34:	5f474944 	svcpl	0x00474944
    1c38:	3335205f 	teqcc	r5, #95	; 0x5f
    1c3c:	485f5f00 	ldmdami	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1c40:	42495f41 	submi	r5, r9, #260	; 0x104
    1c44:	5f5f5449 	svcpl	0x005f5449
    1c48:	5f003820 	svcpl	0x00003820
    1c4c:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1c50:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    1c54:	53495f48 	movtpl	r5, #40776	; 0x9f48
    1c58:	48545f41 	ldmdami	r4, {r0, r6, r8, r9, sl, fp, ip, lr}^
    1c5c:	20424d55 	subcs	r4, r2, r5, asr sp
    1c60:	5f5f0032 	svcpl	0x005f0032
    1c64:	5f515455 	svcpl	0x00515455
    1c68:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1c6c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1c70:	5f003832 	svcpl	0x00003832
    1c74:	4148435f 	cmpmi	r8, pc, asr r3
    1c78:	49425f52 	stmdbmi	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    1c7c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1c80:	5f5f0038 	svcpl	0x005f0038
    1c84:	5f4d5241 	svcpl	0x004d5241
    1c88:	45005046 	strmi	r5, [r0, #-70]	; 0xffffffba
    1c8c:	5f495458 	svcpl	0x00495458
    1c90:	28205250 	stmdacs	r0!, {r4, r6, r9, ip, lr}
    1c94:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1c98:	50723e2d 	rsbspl	r3, r2, sp, lsr #28
    1c9c:	5f002952 	svcpl	0x00002952
    1ca0:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1ca4:	5f525450 	svcpl	0x00525450
    1ca8:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    1cac:	205f5f48 	subscs	r5, pc, r8, asr #30
    1cb0:	5f003233 	svcpl	0x00003233
    1cb4:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    1cb8:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    1cbc:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    1cc0:	5059545f 	subspl	r5, r9, pc, asr r4
    1cc4:	205f5f45 	subscs	r5, pc, r5, asr #30
    1cc8:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    1ccc:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    1cd0:	61686320 	cmnvs	r8, r0, lsr #6
    1cd4:	5f5f0072 	svcpl	0x005f0072
    1cd8:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    1cdc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1ce0:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1ce4:	3739372e 	ldrcc	r3, [r9, -lr, lsr #14]!
    1ce8:	31333936 	teqcc	r3, r6, lsr r9
    1cec:	36383433 			; <UNDEFINED> instruction: 0x36383433
    1cf0:	35313332 	ldrcc	r3, [r1, #-818]!	; 0xfffffcce
    1cf4:	332b6537 			; <UNDEFINED> instruction: 0x332b6537
    1cf8:	004c3830 	subeq	r3, ip, r0, lsr r8
    1cfc:	49465f5f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1d00:	4554494e 	ldrbmi	r4, [r4, #-2382]	; 0xfffff6b2
    1d04:	54414d5f 	strbpl	r4, [r1], #-3423	; 0xfffff2a1
    1d08:	4e4f5f48 	cdpmi	15, 4, cr5, cr15, cr8, {2}
    1d0c:	5f5f594c 	svcpl	0x005f594c
    1d10:	5f003020 	svcpl	0x00003020
    1d14:	4341535f 	movtmi	r5, #4959	; 0x135f
    1d18:	5f4d5543 	svcpl	0x004d5543
    1d1c:	5f58414d 	svcpl	0x0058414d
    1d20:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1d24:	46464637 			; <UNDEFINED> instruction: 0x46464637
    1d28:	48372d50 	ldmdami	r7!, {r4, r6, r8, sl, fp, sp}
    1d2c:	5f5f004b 	svcpl	0x005f004b
    1d30:	5f6d7261 	svcpl	0x006d7261
    1d34:	0031205f 	eorseq	r2, r1, pc, asr r0
    1d38:	5f434352 	svcpl	0x00434352
    1d3c:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
    1d40:	43522820 	cmpmi	r2, #32, 16	; 0x200000
    1d44:	723e2d43 	eorsvc	r2, lr, #4288	; 0x10c0
    1d48:	5f434352 	svcpl	0x00434352
    1d4c:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
    1d50:	5f5f0029 	svcpl	0x005f0029
    1d54:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    1d58:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
    1d5c:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    1d60:	205f5f47 	subscs	r5, pc, r7, asr #30
    1d64:	5f003335 	svcpl	0x00003335
    1d68:	5f51545f 	svcpl	0x0051545f
    1d6c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    1d70:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1d74:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; e7c <g_pfnVectors-0x7fff184>
    1d78:	465f4148 	ldrbmi	r4, [pc], -r8, asr #2
    1d7c:	5f544942 	svcpl	0x00544942
    1d80:	0038205f 	eorseq	r2, r8, pc, asr r0
    1d84:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    1d88:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    1d8c:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    1d90:	5345545f 	movtpl	r5, #21599	; 0x545f
    1d94:	4e415f54 	mcrmi	15, 2, r5, cr1, cr4, {2}
    1d98:	45535f44 	ldrbmi	r5, [r3, #-3908]	; 0xfffff0bc
    1d9c:	52545f54 	subspl	r5, r4, #84, 30	; 0x150
    1da0:	41564555 	cmpmi	r6, r5, asr r5
    1da4:	0031204c 	eorseq	r2, r1, ip, asr #32
    1da8:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
    1dac:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    1db0:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    1db4:	454d5553 	strbmi	r5, [sp, #-1363]	; 0xfffffaad
    1db8:	52003120 	andpl	r3, r0, #32, 2
    1dbc:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
    1dc0:	52282052 	eorpl	r2, r8, #82	; 0x52
    1dc4:	3e2d4343 	cdpcc	3, 2, cr4, cr13, cr3, {2}
    1dc8:	43435272 	movtmi	r5, #12914	; 0x3272
    1dcc:	2952435f 	ldmdbcs	r2, {r0, r1, r2, r3, r4, r6, r8, r9, lr}^
    1dd0:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; ed8 <g_pfnVectors-0x7fff128>
    1dd4:	5f5f464c 	svcpl	0x005f464c
    1dd8:	5f003120 	svcpl	0x00003120
    1ddc:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1de0:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    1de4:	52505f48 	subspl	r5, r0, #72, 30	; 0x120
    1de8:	4c49464f 	mcrrmi	6, 4, r4, r9, cr15
    1dec:	5f5f0045 	svcpl	0x005f0045
    1df0:	31544e49 	cmpcc	r4, r9, asr #28
    1df4:	28435f36 	stmdacs	r3, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    1df8:	63202963 			; <UNDEFINED> instruction: 0x63202963
    1dfc:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    1e00:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    1e04:	5f455641 	svcpl	0x00455641
    1e08:	52415744 	subpl	r5, r1, #68, 14	; 0x1100000
    1e0c:	435f3246 	cmpmi	pc, #1610612740	; 0x60000004
    1e10:	415f4946 	cmpmi	pc, r6, asr #18
    1e14:	31204d53 			; <UNDEFINED> instruction: 0x31204d53
    1e18:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1e20 <g_pfnVectors-0x7ffe1e0>
    1e1c:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    1e20:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    1e24:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1e28:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1e2c:	44362d45 	ldrtmi	r2, [r6], #-3397	; 0xfffff2bb
    1e30:	5f5f0046 	svcpl	0x005f0046
    1e34:	4343414c 	movtmi	r4, #12620	; 0x314c
    1e38:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 1cec <g_pfnVectors-0x7ffe314>
    1e3c:	5f5f5841 	svcpl	0x005f5841
    1e40:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    1e44:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e48:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e4c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e50:	50464646 	subpl	r4, r6, r6, asr #12
    1e54:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    1e58:	5f5f004b 	svcpl	0x005f004b
    1e5c:	5f544e49 	svcpl	0x00544e49
    1e60:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    1e64:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 1da0 <g_pfnVectors-0x7ffe260>
    1e68:	5f5f5841 	svcpl	0x005f5841
    1e6c:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    1e70:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1e74:	00666666 	rsbeq	r6, r6, r6, ror #12
    1e78:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    1e7c:	454e5f4d 	strbmi	r5, [lr, #-3917]	; 0xfffff0b3
    1e80:	5f004e4f 	svcpl	0x00004e4f
    1e84:	4f54415f 	svcmi	0x0054415f
    1e88:	5f43494d 	svcpl	0x0043494d
    1e8c:	55514341 	ldrbpl	r4, [r1, #-833]	; 0xfffffcbf
    1e90:	20455249 	subcs	r5, r5, r9, asr #4
    1e94:	49540032 	ldmdbmi	r4, {r1, r4, r5}^
    1e98:	2820324d 	stmdacs	r0!, {r0, r2, r3, r6, r9, ip, sp}
    1e9c:	4d495428 	cfstrdmi	mvd5, [r9, #-160]	; 0xffffff60
    1ea0:	356f7432 	strbcc	r7, [pc, #-1074]!	; 1a76 <g_pfnVectors-0x7ffe58a>
    1ea4:	4954292a 	ldmdbmi	r4, {r1, r3, r5, r8, fp, sp}^
    1ea8:	425f324d 	subsmi	r3, pc, #-805306364	; 0xd0000004
    1eac:	29455341 	stmdbcs	r5, {r0, r6, r8, r9, ip, lr}^
    1eb0:	53595300 	cmppl	r9, #0, 6
    1eb4:	5f474643 	svcpl	0x00474643
    1eb8:	524d454d 	subpl	r4, sp, #322961408	; 0x13400000
    1ebc:	2820504d 	stmdacs	r0!, {r0, r2, r3, r6, ip, lr}
    1ec0:	43535953 	cmpmi	r3, #1359872	; 0x14c000
    1ec4:	3e2d4746 	cdpcc	7, 2, cr4, cr13, cr6, {2}
    1ec8:	4d454d72 	stclmi	13, cr4, [r5, #-456]	; 0xfffffe38
    1ecc:	29504d52 	ldmdbcs	r0, {r1, r4, r6, r8, sl, fp, lr}^
    1ed0:	415f5f00 	cmpmi	pc, r0, lsl #30
    1ed4:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    1ed8:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    1edc:	435f4552 	cmpmi	pc, #343932928	; 0x14800000
    1ee0:	4f52504f 	svcmi	0x0052504f
    1ee4:	35312043 	ldrcc	r2, [r1, #-67]!	; 0xffffffbd
    1ee8:	535f5f00 	cmppl	pc, #0, 30
    1eec:	5f434454 	svcpl	0x00434454
    1ef0:	0031205f 	eorseq	r2, r1, pc, asr r0
    1ef4:	4f495047 	svcmi	0x00495047
    1ef8:	4f4d5f41 	svcmi	0x004d5f41
    1efc:	20524544 	subscs	r4, r2, r4, asr #10
    1f00:	49504728 	ldmdbmi	r0, {r3, r5, r8, r9, sl, lr}^
    1f04:	3e2d414f 	sufccem	f4, f5, #10.0
    1f08:	444f4d72 	strbmi	r4, [pc], #-3442	; 1f10 <g_pfnVectors-0x7ffe0f0>
    1f0c:	00295245 	eoreq	r5, r9, r5, asr #4
    1f10:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1f14:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    1f18:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    1f1c:	205f5f47 	subscs	r5, pc, r7, asr #30
    1f20:	5f5f0034 	svcpl	0x005f0034
    1f24:	5f4c4244 	svcpl	0x004c4244
    1f28:	5f58414d 	svcpl	0x0058414d
    1f2c:	5f505845 	svcpl	0x00505845
    1f30:	3031205f 	eorscc	r2, r1, pc, asr r0
    1f34:	5f003432 	svcpl	0x00003432
    1f38:	4343475f 	movtmi	r4, #14175	; 0x375f
    1f3c:	4345495f 	movtmi	r4, #22879	; 0x595f
    1f40:	3935355f 	ldmdbcc	r5!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp}
    1f44:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 1dd0 <g_pfnVectors-0x7ffe230>
    1f48:	58454c50 	stmdapl	r5, {r4, r6, sl, fp, lr}^
    1f4c:	5f003020 	svcpl	0x00003020
    1f50:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1f54:	5341465f 	movtpl	r4, #5727	; 0x165f
    1f58:	5f323354 	svcpl	0x00323354
    1f5c:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    1f60:	205f5f48 	subscs	r5, pc, r8, asr #30
    1f64:	53003233 	movwpl	r3, #563	; 0x233
    1f68:	46435359 			; <UNDEFINED> instruction: 0x46435359
    1f6c:	58455f47 	stmdapl	r5, {r0, r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    1f70:	52434954 	subpl	r4, r3, #84, 18	; 0x150000
    1f74:	53282034 			; <UNDEFINED> instruction: 0x53282034
    1f78:	46435359 			; <UNDEFINED> instruction: 0x46435359
    1f7c:	723e2d47 	eorsvc	r2, lr, #4544	; 0x11c0
    1f80:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1f84:	29345243 	ldmdbcs	r4!, {r0, r1, r6, r9, ip, lr}
    1f88:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
    1f8c:	5f544e49 	svcpl	0x00544e49
    1f90:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    1f94:	75205f5f 	strvc	r5, [r0, #-3935]!	; 0xfffff0a1
    1f98:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    1f9c:	2064656e 	rsbcs	r6, r4, lr, ror #10
    1fa0:	00746e69 	rsbseq	r6, r4, r9, ror #28
    1fa4:	43435272 	movtmi	r5, #12914	; 0x3272
    1fa8:	4746435f 	smlsldmi	r4, r6, pc, r3	; <UNPREDICTABLE>
    1fac:	5f5f0052 	svcpl	0x005f0052
    1fb0:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    1fb4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1fb8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1fbc:	66663778 			; <UNDEFINED> instruction: 0x66663778
    1fc0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1fc4:	5f004c66 	svcpl	0x00004c66
    1fc8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1fcc:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 1f10 <g_pfnVectors-0x7ffe0f0>
    1fd0:	5f5f5841 	svcpl	0x005f5841
    1fd4:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    1fd8:	00666666 	rsbeq	r6, r6, r6, ror #12
    1fdc:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    1fe0:	43415246 	movtmi	r5, #4678	; 0x1246
    1fe4:	42465f54 	submi	r5, r6, #84, 30	; 0x150
    1fe8:	5f5f5449 	svcpl	0x005f5449
    1fec:	00323320 	eorseq	r3, r2, r0, lsr #6
    1ff0:	43535f5f 	cmpmi	r3, #380	; 0x17c
    1ff4:	5f524148 	svcpl	0x00524148
    1ff8:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    1ffc:	205f5f48 	subscs	r5, pc, r8, asr #30
    2000:	53550038 	cmppl	r5, #56	; 0x38
    2004:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
    2008:	2052535f 	subscs	r5, r2, pc, asr r3
    200c:	41535528 	cmpmi	r3, r8, lsr #10
    2010:	2d325452 	cfldrscs	mvf5, [r2, #-328]!	; 0xfffffeb8
    2014:	5253723e 	subspl	r7, r3, #-536870909	; 0xe0000003
    2018:	5f5f0029 	svcpl	0x005f0029
    201c:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    2020:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    2024:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2028:	58302d28 	ldmdapl	r0!, {r3, r5, r8, sl, fp, sp}
    202c:	35315031 	ldrcc	r5, [r1, #-49]!	; 0xffffffcf
    2030:	58302d4b 	ldmdapl	r0!, {r0, r1, r3, r6, r8, sl, fp, sp}
    2034:	35315031 	ldrcc	r5, [r1, #-49]!	; 0xffffffcf
    2038:	5f00294b 	svcpl	0x0000294b
    203c:	5a49535f 	bpl	1256dc0 <g_pfnVectors-0x6da9240>
    2040:	5f464f45 	svcpl	0x00464f45
    2044:	42554f44 	subsmi	r4, r5, #68, 30	; 0x110
    2048:	5f5f454c 	svcpl	0x005f454c
    204c:	5f003820 	svcpl	0x00003820
    2050:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    2054:	41505f43 	cmpmi	r0, r3, asr #30
    2058:	4c484354 	mcrrmi	3, 5, r4, r8, cr4
    205c:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    2060:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2064:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2068:	545f5858 	ldrbpl	r5, [pc], #-2136	; 2070 <g_pfnVectors-0x7ffdf90>
    206c:	49455059 	stmdbmi	r5, {r0, r3, r4, r6, ip, lr}^
    2070:	5f4f464e 	svcpl	0x004f464e
    2074:	41555145 	cmpmi	r5, r5, asr #2
    2078:	5954494c 	ldmdbpl	r4, {r2, r3, r6, r8, fp, lr}^
    207c:	4c4e495f 	mcrrmi	9, 5, r4, lr, cr15	; <UNPREDICTABLE>
    2080:	20454e49 	subcs	r4, r5, r9, asr #28
    2084:	5f5f0030 	svcpl	0x005f0030
    2088:	43415246 	movtmi	r5, #4678	; 0x1246
    208c:	414d5f54 	cmpmi	sp, r4, asr pc
    2090:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2094:	46375830 			; <UNDEFINED> instruction: 0x46375830
    2098:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    209c:	00523531 	subseq	r3, r2, r1, lsr r5
    20a0:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    20a4:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 1f74 <g_pfnVectors-0x7ffe08c>
    20a8:	5f5f4e49 	svcpl	0x005f4e49
    20ac:	00553020 	subseq	r3, r5, r0, lsr #32
    20b0:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    20b4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    20b8:	42465f4d 	submi	r5, r6, #308	; 0x134
    20bc:	5f5f5449 	svcpl	0x005f5449
    20c0:	00323320 	eorseq	r3, r2, r0, lsr #6
    20c4:	46555f5f 	usaxmi	r5, r5, pc	; <UNPREDICTABLE>
    20c8:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    20cc:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    20d0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    20d4:	5255302e 	subspl	r3, r5, #46	; 0x2e
    20d8:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 20e0 <g_pfnVectors-0x7ffdf20>
    20dc:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
    20e0:	414d5f38 	cmpmi	sp, r8, lsr pc
    20e4:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    20e8:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    20ec:	35343136 	ldrcc	r3, [r4, #-310]!	; 0xfffffeca
    20f0:	415f5f00 	cmpmi	pc, r0, lsl #30
    20f4:	4e5f4d52 	mrcmi	13, 2, r4, cr15, cr2, {2}
    20f8:	5f4e4f45 	svcpl	0x004e4f45
    20fc:	5f005046 	svcpl	0x00005046
    2100:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    2104:	54555f43 	ldrbpl	r5, [r5], #-3907	; 0xfffff0bd
    2108:	36315f46 	ldrtcc	r5, [r1], -r6, asr #30
    210c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2110:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2114:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    2118:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    211c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2120:	5f5f0030 	svcpl	0x005f0030
    2124:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    2128:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    212c:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    2130:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
    2134:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
    2138:	30353835 	eorscc	r3, r5, r5, lsr r8
    213c:	31303237 	teqcc	r0, r7, lsr r2
    2140:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    2144:	004c3830 	subeq	r3, ip, r0, lsr r8
    2148:	5f474552 	svcpl	0x00474552
    214c:	43535953 	cmpmi	r3, #1359872	; 0x14c000
    2150:	72004746 	andvc	r4, r0, #18350080	; 0x1180000
    2154:	72657365 	rsbvc	r7, r5, #-1811939327	; 0x94000001
    2158:	33646576 	cmncc	r4, #494927872	; 0x1d800000
    215c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2160:	5f4c4244 	svcpl	0x004c4244
    2164:	5f534148 	svcpl	0x00534148
    2168:	49464e49 	stmdbmi	r6, {r0, r3, r6, r9, sl, fp, lr}^
    216c:	5954494e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, fp, lr}^
    2170:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2174:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 127c <g_pfnVectors-0x7ffed84>
    2178:	5f544e49 	svcpl	0x00544e49
    217c:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    2180:	545f3436 	ldrbpl	r3, [pc], #-1078	; 2188 <g_pfnVectors-0x7ffde78>
    2184:	5f455059 	svcpl	0x00455059
    2188:	6f6c205f 	svcvs	0x006c205f
    218c:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
    2190:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    2194:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    2198:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    219c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    21a0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 12a8 <g_pfnVectors-0x7ffed58>
    21a4:	33544e49 	cmpcc	r4, #1168	; 0x490
    21a8:	414d5f32 	cmpmi	sp, r2, lsr pc
    21ac:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    21b0:	66667830 			; <UNDEFINED> instruction: 0x66667830
    21b4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    21b8:	4c556666 	mrrcmi	6, 6, r6, r5, cr6
    21bc:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    21c0:	5f4c4244 	svcpl	0x004c4244
    21c4:	5f4e494d 	svcpl	0x004e494d
    21c8:	5f505845 	svcpl	0x00505845
    21cc:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    21d0:	31323031 	teqcc	r2, r1, lsr r0
    21d4:	5f5f0029 	svcpl	0x005f0029
    21d8:	464c4c55 			; <UNDEFINED> instruction: 0x464c4c55
    21dc:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    21e0:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    21e4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    21e8:	5f003436 	svcpl	0x00003436
    21ec:	5a49535f 	bpl	1256f70 <g_pfnVectors-0x6da9090>
    21f0:	5f464f45 	svcpl	0x00464f45
    21f4:	41484357 	cmpmi	r8, r7, asr r3
    21f8:	5f545f52 	svcpl	0x00545f52
    21fc:	0034205f 	eorseq	r2, r4, pc, asr r0
    2200:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2204:	5f54414f 	svcpl	0x0054414f
    2208:	44524f57 	ldrbmi	r4, [r2], #-3927	; 0xfffff0a9
    220c:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
    2210:	5f5f5245 	svcpl	0x005f5245
    2214:	4f5f5f20 	svcmi	0x005f5f20
    2218:	52454452 	subpl	r4, r5, #1375731712	; 0x52000000
    221c:	54494c5f 	strbpl	r4, [r9], #-3167	; 0xfffff3a1
    2220:	5f454c54 	svcpl	0x00454c54
    2224:	49444e45 	stmdbmi	r4, {r0, r2, r6, r9, sl, fp, lr}^
    2228:	5f5f4e41 	svcpl	0x005f4e41
    222c:	415f5f00 	cmpmi	pc, r0, lsl #30
    2230:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    2234:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2238:	30205f5f 	eorcc	r5, r0, pc, asr pc
    223c:	46463758 			; <UNDEFINED> instruction: 0x46463758
    2240:	46464646 	strbmi	r4, [r6], -r6, asr #12
    2244:	312d5046 			; <UNDEFINED> instruction: 0x312d5046
    2248:	5f004b35 	svcpl	0x00004b35
    224c:	5a49535f 	bpl	1256fd0 <g_pfnVectors-0x6da9030>
    2250:	49575f45 	ldmdbmi	r7, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    2254:	5f485444 	svcpl	0x00485444
    2258:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    225c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 2264 <g_pfnVectors-0x7ffdd9c>
    2260:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    2264:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
    2268:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    226c:	205f5f47 	subscs	r5, pc, r7, asr #30
    2270:	52720037 	rsbspl	r0, r2, #55	; 0x37
    2274:	415f4343 	cmpmi	pc, r3, asr #6
    2278:	52314248 	eorspl	r4, r1, #72, 4	; 0x80000004
    227c:	00525453 	subseq	r5, r2, r3, asr r4
    2280:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2284:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    2288:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    228c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2290:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2294:	535f5f2d 	cmppl	pc, #45, 30	; 0xb4
    2298:	415f4749 	cmpmi	pc, r9, asr #14
    229c:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    22a0:	414d5f43 	cmpmi	sp, r3, asr #30
    22a4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    22a8:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    22ac:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    22b0:	4152464c 	cmpmi	r2, ip, asr #12
    22b4:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 1e79 <g_pfnVectors-0x7ffe187>
    22b8:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    22bc:	5f5f4e4f 	svcpl	0x005f4e4f
    22c0:	31783020 	cmncc	r8, r0, lsr #32
    22c4:	33362d50 	teqcc	r6, #80, 26	; 0x1400
    22c8:	00524c4c 	subseq	r4, r2, ip, asr #24
    22cc:	324d4954 	subcc	r4, sp, #84, 18	; 0x150000
    22d0:	5252415f 	subspl	r4, r2, #-1073741801	; 0xc0000017
    22d4:	49542820 	ldmdbmi	r4, {r5, fp, sp}^
    22d8:	3e2d324d 	cdpcc	2, 2, cr3, cr13, cr13, {2}
    22dc:	52524172 	subspl	r4, r2, #-2147483620	; 0x8000001c
    22e0:	5f5f0029 	svcpl	0x005f0029
    22e4:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    22e8:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    22ec:	5f5f4854 	svcpl	0x005f4854
    22f0:	00323320 	eorseq	r3, r2, r0, lsr #6
    22f4:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
    22f8:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    22fc:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    2300:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2304:	5f5f0037 	svcpl	0x005f0037
    2308:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    230c:	545f3233 	ldrbpl	r3, [pc], #-563	; 2314 <g_pfnVectors-0x7ffdcec>
    2310:	5f455059 	svcpl	0x00455059
    2314:	6f6c205f 	svcvs	0x006c205f
    2318:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
    231c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    2320:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2324:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2328:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
    232c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    2330:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2334:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2338:	5f5f0030 	svcpl	0x005f0030
    233c:	5f4d5241 	svcpl	0x004d5241
    2340:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    2344:	5f455255 	svcpl	0x00455255
    2348:	4552444c 	ldrbmi	r4, [r2, #-1100]	; 0xfffffbb4
    234c:	00372058 	eorseq	r2, r7, r8, asr r0
    2350:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2354:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    2358:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    235c:	59545f34 	ldmdbpl	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    2360:	5f5f4550 	svcpl	0x005f4550
    2364:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    2368:	6f6c2067 	svcvs	0x006c2067
    236c:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
    2370:	5300746e 	movwpl	r7, #1134	; 0x46e
    2374:	32334d54 	eorscc	r4, r3, #84, 26	; 0x1500
    2378:	31313446 	teqcc	r1, r6, asr #8
    237c:	49445f45 	stmdbmi	r4, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    2380:	204f4353 	subcs	r4, pc, r3, asr r3	; <UNPREDICTABLE>
    2384:	5f5f0031 	svcpl	0x005f0031
    2388:	52455355 	subpl	r5, r5, #1409286145	; 0x54000001
    238c:	42414c5f 	submi	r4, r1, #24320	; 0x5f00
    2390:	505f4c45 	subspl	r4, pc, r5, asr #24
    2394:	49464552 	stmdbmi	r6, {r1, r4, r6, r8, sl, lr}^
    2398:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    239c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    23a0:	445f544c 	ldrbmi	r5, [pc], #-1100	; 23a8 <g_pfnVectors-0x7ffdc58>
    23a4:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    23a8:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    23ac:	205f5f4e 	subscs	r5, pc, lr, asr #30
    23b0:	30342e31 	eorscc	r2, r4, r1, lsr lr
    23b4:	38393231 	ldmdacc	r9!, {r0, r4, r5, r9, ip, sp}
    23b8:	33343634 	teqcc	r4, #52, 12	; 0x3400000
    23bc:	31383432 	teqcc	r8, r2, lsr r4
    23c0:	2d653137 	stfcse	f3, [r5, #-220]!	; 0xffffff24
    23c4:	00463534 	subeq	r3, r6, r4, lsr r5
    23c8:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    23cc:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    23d0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    23d4:	545f3233 	ldrbpl	r3, [pc], #-563	; 23dc <g_pfnVectors-0x7ffdc24>
    23d8:	5f455059 	svcpl	0x00455059
    23dc:	6f6c205f 	svcvs	0x006c205f
    23e0:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
    23e4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    23e8:	2064656e 	rsbcs	r6, r4, lr, ror #10
    23ec:	00746e69 	rsbseq	r6, r4, r9, ror #28
    23f0:	51445f5f 	cmppl	r4, pc, asr pc
    23f4:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    23f8:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    23fc:	5f003336 	svcpl	0x00003336
    2400:	4153555f 	cmpmi	r3, pc, asr r5
    2404:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    2408:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    240c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2410:	46464658 			; <UNDEFINED> instruction: 0x46464658
    2414:	382d5046 	stmdacc	sp!, {r1, r2, r6, ip, lr}
    2418:	004b4855 	subeq	r4, fp, r5, asr r8
    241c:	324d4954 	subcc	r4, sp, #84, 18	; 0x150000
    2420:	4549445f 	strbmi	r4, [r9, #-1119]	; 0xfffffba1
    2424:	54282052 	strtpl	r2, [r8], #-82	; 0xffffffae
    2428:	2d324d49 	ldccs	13, cr4, [r2, #-292]!	; 0xfffffedc
    242c:	4944723e 	stmdbmi	r4, {r1, r2, r3, r4, r5, r9, ip, sp, lr}^
    2430:	00295245 	eoreq	r5, r9, r5, asr #4
    2434:	48555f5f 	ldmdami	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2438:	42465f51 	submi	r5, r6, #324	; 0x144
    243c:	5f5f5449 	svcpl	0x005f5449
    2440:	00363120 	eorseq	r3, r6, r0, lsr #2
    2444:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2448:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    244c:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    2450:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    2454:	5f5f4854 	svcpl	0x005f4854
    2458:	00323320 	eorseq	r3, r2, r0, lsr #6
    245c:	48535f5f 	ldmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2460:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 2320 <g_pfnVectors-0x7ffdce0>
    2464:	5f5f5841 	svcpl	0x005f5841
    2468:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    246c:	00666666 	rsbeq	r6, r6, r6, ror #12
    2470:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    2474:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    2478:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    247c:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    2480:	545f5241 	ldrbpl	r5, [pc], #-577	; 2488 <g_pfnVectors-0x7ffdb78>
    2484:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    2488:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    248c:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    2490:	415f5f00 	cmpmi	pc, r0, lsl #30
    2494:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    2498:	5f363150 	svcpl	0x00363150
    249c:	53475241 	movtpl	r5, #29249	; 0x7241
    24a0:	4f5f5f00 	svcmi	0x005f5f00
    24a4:	52454452 	subpl	r4, r5, #1375731712	; 0x52000000
    24a8:	5044505f 	subpl	r5, r4, pc, asr r0
    24ac:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
    24b0:	5f4e4149 	svcpl	0x004e4149
    24b4:	3433205f 	ldrtcc	r2, [r3], #-95	; 0xffffffa1
    24b8:	5f003231 	svcpl	0x00003231
    24bc:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    24c0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    24c4:	31545341 	cmpcc	r4, r1, asr #6
    24c8:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    24cc:	5f5f4550 	svcpl	0x005f4550
    24d0:	6f687320 	svcvs	0x00687320
    24d4:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
    24d8:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    24dc:	2064656e 	rsbcs	r6, r4, lr, ror #10
    24e0:	00746e69 	rsbseq	r6, r4, r9, ror #28
    24e4:	524d4572 	subpl	r4, sp, #478150656	; 0x1c800000
    24e8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    24ec:	445f544c 	ldrbmi	r5, [pc], #-1100	; 24f4 <g_pfnVectors-0x7ffdb0c>
    24f0:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
    24f4:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 24fc <g_pfnVectors-0x7ffdb04>
    24f8:	5f5f4749 	svcpl	0x005f4749
    24fc:	5f003920 	svcpl	0x00003920
    2500:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2504:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 2434 <g_pfnVectors-0x7ffdbcc>
    2508:	315f5841 	cmpcc	pc, r1, asr #16
    250c:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    2510:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    2514:	00383033 	eorseq	r3, r8, r3, lsr r0
    2518:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    251c:	5f323354 	svcpl	0x00323354
    2520:	5f58414d 	svcpl	0x0058414d
    2524:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2528:	66666637 			; <UNDEFINED> instruction: 0x66666637
    252c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2530:	5f5f004c 	svcpl	0x005f004c
    2534:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    2538:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    253c:	5f5f4854 	svcpl	0x005f4854
    2540:	00323320 	eorseq	r3, r2, r0, lsr #6
    2544:	51555f5f 	cmppl	r5, pc, asr pc
    2548:	42465f51 	submi	r5, r6, #324	; 0x144
    254c:	5f5f5449 	svcpl	0x005f5449
    2550:	55003820 	strpl	r3, [r0, #-2080]	; 0xfffff7e0
    2554:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    2558:	52435f32 	subpl	r5, r3, #50, 30	; 0xc8
    255c:	55282032 	strpl	r2, [r8, #-50]!	; 0xffffffce
    2560:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    2564:	723e2d32 	eorsvc	r2, lr, #3200	; 0xc80
    2568:	29325243 	ldmdbcs	r2!, {r0, r1, r6, r9, ip, lr}
    256c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1674 <g_pfnVectors-0x7ffe98c>
    2570:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    2574:	414d5f4d 	cmpmi	sp, sp, asr #30
    2578:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    257c:	46465830 			; <UNDEFINED> instruction: 0x46465830
    2580:	46464646 	strbmi	r4, [r6], -r6, asr #12
    2584:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    2588:	4b553631 	blmi	154fe54 <g_pfnVectors-0x6ab01ac>
    258c:	43435200 	movtmi	r5, #12800	; 0x3200
    2590:	5249435f 	subpl	r4, r9, #2080374785	; 0x7c000001
    2594:	43522820 	cmpmi	r2, #32, 16	; 0x200000
    2598:	723e2d43 	eorsvc	r2, lr, #4288	; 0x10c0
    259c:	5f434352 	svcpl	0x00434352
    25a0:	29524943 	ldmdbcs	r2, {r0, r1, r6, r8, fp, lr}^
    25a4:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 25ac <g_pfnVectors-0x7ffda54>
    25a8:	34364345 	ldrtcc	r4, [r6], #-837	; 0xfffffcbb
    25ac:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    25b0:	5058455f 	subspl	r4, r8, pc, asr r5
    25b4:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    25b8:	47003538 	smladxmi	r0, r8, r5, r3
    25bc:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
    25c0:	52444f5f 	subpl	r4, r4, #380	; 0x17c
    25c4:	50472820 	subpl	r2, r7, r0, lsr #16
    25c8:	2d414f49 	stclcs	15, cr4, [r1, #-292]	; 0xfffffedc
    25cc:	444f723e 	strbmi	r7, [pc], #-574	; 25d4 <g_pfnVectors-0x7ffda2c>
    25d0:	5f002952 	svcpl	0x00002952
    25d4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    25d8:	41454c5f 	cmpmi	r5, pc, asr ip
    25dc:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    25e0:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    25e4:	5f5f4854 	svcpl	0x005f4854
    25e8:	00343620 	eorseq	r3, r4, r0, lsr #12
    25ec:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    25f0:	5f323354 	svcpl	0x00323354
    25f4:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    25f8:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    25fc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    2600:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2604:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2608:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    260c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2610:	5f30315f 	svcpl	0x0030315f
    2614:	5f505845 	svcpl	0x00505845
    2618:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    261c:	29373033 	ldmdbcs	r7!, {r0, r1, r4, r5, ip, sp}
    2620:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1728 <g_pfnVectors-0x7ffe8d8>
    2624:	5f544e49 	svcpl	0x00544e49
    2628:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    262c:	545f3233 	ldrbpl	r3, [pc], #-563	; 2634 <g_pfnVectors-0x7ffd9cc>
    2630:	5f455059 	svcpl	0x00455059
    2634:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    2638:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    263c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    2640:	5f00746e 	svcpl	0x0000746e
    2644:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2648:	4145465f 	cmpmi	r5, pc, asr r6
    264c:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    2650:	4944495f 	stmdbmi	r4, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2654:	00312056 	eorseq	r2, r1, r6, asr r0
    2658:	53555f5f 	cmppl	r5, #380	; 0x17c
    265c:	42465f41 	submi	r5, r6, #260	; 0x104
    2660:	5f5f5449 	svcpl	0x005f5449
    2664:	00363120 	eorseq	r3, r6, r0, lsr #2
    2668:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    266c:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 256c <g_pfnVectors-0x7ffda94>
    2670:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 1e37 <g_pfnVectors-0x7ffe1c9>
    2674:	5f5f5058 	svcpl	0x005f5058
    2678:	32303120 	eorscc	r3, r0, #32, 2
    267c:	5f5f0034 	svcpl	0x005f0034
    2680:	465f5153 			; <UNDEFINED> instruction: 0x465f5153
    2684:	5f544942 	svcpl	0x00544942
    2688:	3133205f 	teqcc	r3, pc, asr r0
    268c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2690:	43415246 	movtmi	r5, #4678	; 0x1246
    2694:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2698:	205f5f4e 	subscs	r5, pc, lr, asr #30
    269c:	2e302d28 	cdpcs	13, 3, cr2, cr0, cr8, {1}
    26a0:	2d524c35 	ldclcs	12, cr4, [r2, #-212]	; 0xffffff2c
    26a4:	4c352e30 	ldcmi	14, cr2, [r5], #-192	; 0xffffff40
    26a8:	53002952 	movwpl	r2, #2386	; 0x952
    26ac:	32334d54 	eorscc	r4, r3, #84, 26	; 0x1500
    26b0:	5f003120 	svcpl	0x00003120
    26b4:	4345445f 	movtmi	r4, #21599	; 0x545f
    26b8:	5f383231 	svcpl	0x00383231
    26bc:	5f4e494d 	svcpl	0x004e494d
    26c0:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    26c4:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    26c8:	004c4433 	subeq	r4, ip, r3, lsr r4
    26cc:	43575f5f 	cmpmi	r7, #380	; 0x17c
    26d0:	5f524148 	svcpl	0x00524148
    26d4:	5f4e494d 	svcpl	0x004e494d
    26d8:	5530205f 	ldrpl	r2, [r0, #-95]!	; 0xffffffa1
    26dc:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    26e0:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    26e4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    26e8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    26ec:	3739372e 	ldrcc	r3, [r9, -lr, lsr #14]!
    26f0:	31333936 	teqcc	r3, r6, lsr r9
    26f4:	36383433 			; <UNDEFINED> instruction: 0x36383433
    26f8:	35313332 	ldrcc	r3, [r1, #-818]!	; 0xfffffcce
    26fc:	332b6537 			; <UNDEFINED> instruction: 0x332b6537
    2700:	36463830 			; <UNDEFINED> instruction: 0x36463830
    2704:	50470034 	subpl	r0, r7, r4, lsr r0
    2708:	5f444f49 	svcpl	0x00444f49
    270c:	44505550 	ldrbmi	r5, [r0], #-1360	; 0xfffffab0
    2710:	47282052 			; <UNDEFINED> instruction: 0x47282052
    2714:	444f4950 	strbmi	r4, [pc], #-2384	; 271c <g_pfnVectors-0x7ffd8e4>
    2718:	50723e2d 	rsbspl	r3, r2, sp, lsr #28
    271c:	52445055 	subpl	r5, r4, #85	; 0x55
    2720:	5f5f0029 	svcpl	0x005f0029
    2724:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
    2728:	205f5f62 	subscs	r5, pc, r2, ror #30
    272c:	5f5f0031 	svcpl	0x005f0031
    2730:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    2734:	5341485f 	movtpl	r4, #6239	; 0x185f
    2738:	4955515f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, ip, lr}^
    273c:	4e5f5445 	cdpmi	4, 5, cr5, cr15, cr5, {2}
    2740:	5f5f4e41 	svcpl	0x005f4e41
    2744:	5f003120 	svcpl	0x00003120
    2748:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    274c:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    2750:	5f5f4550 	svcpl	0x005f4550
    2754:	67697320 	strbvs	r7, [r9, -r0, lsr #6]!
    2758:	2064656e 	rsbcs	r6, r4, lr, ror #10
    275c:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    2760:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
    2764:	5f544e49 	svcpl	0x00544e49
    2768:	5f58414d 	svcpl	0x0058414d
    276c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2770:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2774:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2778:	5f5f0055 	svcpl	0x005f0055
    277c:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    2780:	4345445f 	movtmi	r4, #21599	; 0x545f
    2784:	4c414d49 	mcrrmi	13, 4, r4, r1, cr9
    2788:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    278c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2790:	50470037 	subpl	r0, r7, r7, lsr r0
    2794:	5f444f49 	svcpl	0x00444f49
    2798:	4c524641 	mrrcmi	6, 4, r4, r2, cr1
    279c:	50472820 	subpl	r2, r7, r0, lsr #16
    27a0:	2d444f49 	stclcs	15, cr4, [r4, #-292]	; 0xfffffedc
    27a4:	4641723e 			; <UNDEFINED> instruction: 0x4641723e
    27a8:	00294c52 	eoreq	r4, r9, r2, asr ip
    27ac:	51545f5f 	cmppl	r4, pc, asr pc
    27b0:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    27b4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    27b8:	00373231 	eorseq	r3, r7, r1, lsr r2
    27bc:	53555f5f 	cmppl	r5, #380	; 0x17c
    27c0:	43415246 	movtmi	r5, #4678	; 0x1246
    27c4:	50455f54 	subpl	r5, r5, r4, asr pc
    27c8:	4f4c4953 	svcmi	0x004c4953
    27cc:	205f5f4e 	subscs	r5, pc, lr, asr #30
    27d0:	50317830 	eorspl	r7, r1, r0, lsr r8
    27d4:	4855382d 	ldmdami	r5, {r0, r2, r3, r5, fp, ip, sp}^
    27d8:	5f5f0052 	svcpl	0x005f0052
    27dc:	5f415355 	svcpl	0x00415355
    27e0:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    27e4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    27e8:	52720036 	rsbspl	r0, r2, #54	; 0x36
    27ec:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
    27f0:	4c460052 	mcrrmi	0, 5, r0, r6, cr2
    27f4:	5f485341 	svcpl	0x00485341
    27f8:	20524341 	subscs	r4, r2, r1, asr #6
    27fc:	6f76282a 	svcvs	0x0076282a
    2800:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    2804:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    2808:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    280c:	2064656e 	rsbcs	r6, r4, lr, ror #10
    2810:	7830292a 	ldmdavc	r0!, {r1, r3, r5, r8, fp, sp}
    2814:	32303034 	eorscc	r3, r0, #52	; 0x34
    2818:	30304333 	eorscc	r4, r0, r3, lsr r3
    281c:	44497200 	strbmi	r7, [r9], #-512	; 0xfffffe00
    2820:	5f5f0052 	svcpl	0x005f0052
    2824:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2828:	5341465f 	movtpl	r4, #5727	; 0x165f
    282c:	5f323354 	svcpl	0x00323354
    2830:	5f58414d 	svcpl	0x0058414d
    2834:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2838:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    283c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2840:	5f5f0055 	svcpl	0x005f0055
    2844:	52465355 	subpl	r5, r6, #1409286145	; 0x54000001
    2848:	5f544341 	svcpl	0x00544341
    284c:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    2850:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2854:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2858:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    285c:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    2860:	20632029 	rsbcs	r2, r3, r9, lsr #32
    2864:	4c202323 	stcmi	3, cr2, [r0], #-140	; 0xffffff74
    2868:	5f5f004c 	svcpl	0x005f004c
    286c:	465f5148 	ldrbmi	r5, [pc], -r8, asr #2
    2870:	5f544942 	svcpl	0x00544942
    2874:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    2878:	43527200 	cmpmi	r2, #0, 4
    287c:	50415f43 	subpl	r5, r1, r3, asr #30
    2880:	4e453242 	cdpmi	2, 4, cr3, cr5, cr2, {2}
    2884:	54530052 	ldrbpl	r0, [r3], #-82	; 0xffffffae
    2888:	4632334d 	ldrtmi	r3, [r2], -sp, asr #6
    288c:	00312034 	eorseq	r2, r1, r4, lsr r0
    2890:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    2894:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    2898:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    289c:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    28a0:	3233444d 	eorscc	r4, r3, #1291845632	; 0x4d000000
    28a4:	5f003120 	svcpl	0x00003120
    28a8:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    28ac:	4d5f5241 	lfmmi	f5, 2, [pc, #-260]	; 27b0 <g_pfnVectors-0x7ffd850>
    28b0:	5f5f5841 	svcpl	0x005f5841
    28b4:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    28b8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    28bc:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    28c0:	535f5f00 	cmppl	pc, #0, 30
    28c4:	4f455a49 	svcmi	0x00455a49
    28c8:	4f4c5f46 	svcmi	0x004c5f46
    28cc:	4c5f474e 	mrrcmi	7, 4, r4, pc, cr14	; <UNPREDICTABLE>
    28d0:	5f474e4f 	svcpl	0x00474e4f
    28d4:	0038205f 	eorseq	r2, r8, pc, asr r0
    28d8:	4f495047 	svcmi	0x00495047
    28dc:	46415f41 	strbmi	r5, [r1], -r1, asr #30
    28e0:	28204852 	stmdacs	r0!, {r1, r4, r6, fp, lr}
    28e4:	4f495047 	svcmi	0x00495047
    28e8:	723e2d41 	eorsvc	r2, lr, #4160	; 0x1040
    28ec:	48524641 	ldmdami	r2, {r0, r6, r9, sl, lr}^
    28f0:	5f5f0029 	svcpl	0x005f0029
    28f4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    28f8:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    28fc:	5f5f4550 	svcpl	0x005f4550
    2900:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    2904:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2908:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
    290c:	5f007261 	svcpl	0x00007261
    2910:	5248535f 	subpl	r5, r8, #2080374785	; 0x7c000001
    2914:	49575f54 	ldmdbmi	r7, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2918:	5f485444 	svcpl	0x00485444
    291c:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    2920:	73657200 	cmnvc	r5, #0, 4
    2924:	65767265 	ldrbvs	r7, [r6, #-613]!	; 0xfffffd9b
    2928:	72003164 	andvc	r3, r0, #100, 2
    292c:	72657365 	rsbvc	r7, r5, #-1811939327	; 0x94000001
    2930:	32646576 	rsbcc	r6, r4, #494927872	; 0x1d800000
    2934:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2938:	455f544c 	ldrbmi	r5, [pc, #-1100]	; 24f4 <g_pfnVectors-0x7ffdb0c>
    293c:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    2940:	5f5f4e4f 	svcpl	0x005f4e4f
    2944:	312e3120 			; <UNDEFINED> instruction: 0x312e3120
    2948:	39303239 	ldmdbcc	r0!, {r0, r3, r4, r5, r9, ip, sp}
    294c:	35393832 	ldrcc	r3, [r9, #-2098]!	; 0xfffff7ce
    2950:	38373035 	ldmdacc	r7!, {r0, r2, r4, r5, ip, sp}
    2954:	65353231 	ldrvs	r3, [r5, #-561]!	; 0xfffffdcf
    2958:	0046372d 	subeq	r3, r6, sp, lsr #14
    295c:	65736572 	ldrbvs	r6, [r3, #-1394]!	; 0xfffffa8e
    2960:	64657672 	strbtvs	r7, [r5], #-1650	; 0xfffff98e
    2964:	52720034 	rsbspl	r0, r2, #52	; 0x34
    2968:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
    296c:	72005249 	andvc	r5, r0, #-1879048188	; 0x90000004
    2970:	72657365 	rsbvc	r7, r5, #-1811939327	; 0x94000001
    2974:	36646576 			; <UNDEFINED> instruction: 0x36646576
    2978:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    297c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    2980:	31545341 	cmpcc	r4, r1, asr #6
    2984:	414d5f36 	cmpmi	sp, r6, lsr pc
    2988:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    298c:	66377830 			; <UNDEFINED> instruction: 0x66377830
    2990:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2994:	5f006666 	svcpl	0x00006666
    2998:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    299c:	5f323354 	svcpl	0x00323354
    29a0:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    29a4:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    29a8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    29ac:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    29b0:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    29b4:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    29b8:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    29bc:	5f4c4244 	svcpl	0x004c4244
    29c0:	5f4e494d 	svcpl	0x004e494d
    29c4:	455f3031 	ldrbmi	r3, [pc, #-49]	; 299b <g_pfnVectors-0x7ffd665>
    29c8:	5f5f5058 	svcpl	0x005f5058
    29cc:	332d2820 			; <UNDEFINED> instruction: 0x332d2820
    29d0:	00293730 	eoreq	r3, r9, r0, lsr r7
    29d4:	43535953 	cmpmi	r3, #1359872	; 0x14c000
    29d8:	505f4746 	subspl	r4, pc, r6, asr #14
    29dc:	2820434d 	stmdacs	r0!, {r0, r2, r3, r6, r8, r9, lr}
    29e0:	43535953 	cmpmi	r3, #1359872	; 0x14c000
    29e4:	3e2d4746 	cdpcc	7, 2, cr4, cr13, cr6, {2}
    29e8:	434d5072 	movtmi	r5, #53362	; 0xd072
    29ec:	5f002920 	svcpl	0x00002920
    29f0:	5a49535f 	bpl	1257774 <g_pfnVectors-0x6da888c>
    29f4:	5f464f45 	svcpl	0x00464f45
    29f8:	4e494f50 	mcrmi	15, 2, r4, cr9, cr0, {2}
    29fc:	5f524554 	svcpl	0x00524554
    2a00:	0034205f 	eorseq	r2, r4, pc, asr r0
    2a04:	46565f5f 	usaxmi	r5, r6, pc	; <UNPREDICTABLE>
    2a08:	50465f50 	subpl	r5, r6, r0, asr pc
    2a0c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2a10:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1b18 <g_pfnVectors-0x7ffe4e8>
    2a14:	4152464c 	cmpmi	r2, ip, asr #12
    2a18:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 2914 <g_pfnVectors-0x7ffd6ec>
    2a1c:	5f5f5841 	svcpl	0x005f5841
    2a20:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
    2a24:	46464646 	strbmi	r4, [r6], -r6, asr #12
    2a28:	50464646 	subpl	r4, r6, r6, asr #12
    2a2c:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
    2a30:	5f00524c 	svcpl	0x0000524c
    2a34:	5f41485f 	svcpl	0x0041485f
    2a38:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    2a3c:	37205f5f 			; <UNDEFINED> instruction: 0x37205f5f
    2a40:	505f5f00 	subspl	r5, pc, r0, lsl #30
    2a44:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    2a48:	575f4646 	ldrbpl	r4, [pc, -r6, asr #12]
    2a4c:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    2a50:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    2a54:	5f5f0032 	svcpl	0x005f0032
    2a58:	33544c46 	cmpcc	r4, #17920	; 0x4600
    2a5c:	45445f32 	strbmi	r5, [r4, #-3890]	; 0xfffff0ce
    2a60:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    2a64:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2a68:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2a6c:	3130342e 	teqcc	r0, lr, lsr #8
    2a70:	34383932 	ldrtcc	r3, [r8], #-2354	; 0xfffff6ce
    2a74:	32333436 	eorscc	r3, r3, #905969664	; 0x36000000
    2a78:	37313834 			; <UNDEFINED> instruction: 0x37313834
    2a7c:	342d6531 	strtcc	r6, [sp], #-1329	; 0xfffffacf
    2a80:	32334635 	eorscc	r4, r3, #55574528	; 0x3500000
    2a84:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    2a88:	57535f49 	ldrbpl	r5, [r3, -r9, asr #30]
    2a8c:	20524549 	subscs	r4, r2, r9, asr #10
    2a90:	54584528 	ldrbpl	r4, [r8], #-1320	; 0xfffffad8
    2a94:	723e2d49 	eorsvc	r2, lr, #4672	; 0x1240
    2a98:	45495753 	strbmi	r5, [r9, #-1875]	; 0xfffff8ad
    2a9c:	72002952 	andvc	r2, r0, #1343488	; 0x148000
    2aa0:	43504d43 	cmpmi	r0, #4288	; 0x10c0
    2aa4:	5f5f0052 	svcpl	0x005f0052
    2aa8:	43434153 	movtmi	r4, #12627	; 0x3153
    2aac:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 2960 <g_pfnVectors-0x7ffd6a0>
    2ab0:	5f5f4e49 	svcpl	0x005f4e49
    2ab4:	302d2820 	eorcc	r2, sp, r0, lsr #16
    2ab8:	37503158 			; <UNDEFINED> instruction: 0x37503158
    2abc:	302d4b48 	eorcc	r4, sp, r8, asr #22
    2ac0:	37503158 			; <UNDEFINED> instruction: 0x37503158
    2ac4:	00294b48 	eoreq	r4, r9, r8, asr #22
    2ac8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2acc:	49575f54 	ldmdbmi	r7, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2ad0:	5f485444 	svcpl	0x00485444
    2ad4:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    2ad8:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    2adc:	4f5f414f 	svcmi	0x005f414f
    2ae0:	45455053 	strbmi	r5, [r5, #-83]	; 0xffffffad
    2ae4:	28205244 	stmdacs	r0!, {r2, r6, r9, ip, lr}
    2ae8:	4f495047 	svcmi	0x00495047
    2aec:	723e2d41 	eorsvc	r2, lr, #4160	; 0x1040
    2af0:	4550534f 	ldrbmi	r5, [r0, #-847]	; 0xfffffcb1
    2af4:	29524445 	ldmdbcs	r2, {r0, r2, r6, sl, lr}^
    2af8:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2afc:	415f4343 	cmpmi	pc, r3, asr #6
    2b00:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    2b04:	4f505f43 	svcmi	0x00505f43
    2b08:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    2b0c:	4f4c5f52 	svcmi	0x004c5f52
    2b10:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    2b14:	20454552 	subcs	r4, r5, r2, asr r5
    2b18:	5f5f0032 	svcpl	0x005f0032
    2b1c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2b20:	435f3436 	cmpmi	pc, #905969664	; 0x36000000
    2b24:	20296328 	eorcs	r6, r9, r8, lsr #6
    2b28:	23232063 			; <UNDEFINED> instruction: 0x23232063
    2b2c:	4c4c5520 	cfstr64mi	mvdx5, [ip], {32}
    2b30:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2b34:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    2b38:	50455f4d 	subpl	r5, r5, sp, asr #30
    2b3c:	4f4c4953 	svcmi	0x004c4953
    2b40:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2b44:	50317830 	eorspl	r7, r1, r0, lsr r8
    2b48:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    2b4c:	616d004b 	cmnvs	sp, fp, asr #32
    2b50:	47006e69 	strmi	r6, [r0, -r9, ror #28]
    2b54:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
    2b58:	52282820 	eorpl	r2, r8, #32, 16	; 0x200000
    2b5c:	475f4745 	ldrbmi	r4, [pc, -r5, asr #14]
    2b60:	2a4f4950 	bcs	13d50a8 <g_pfnVectors-0x6c2af58>
    2b64:	49504729 	ldmdbmi	r0, {r0, r3, r5, r8, r9, sl, lr}^
    2b68:	425f414f 	subsmi	r4, pc, #-1073741805	; 0xc0000013
    2b6c:	29455341 	stmdbcs	r5, {r0, r6, r8, r9, ip, lr}^
    2b70:	535f5f00 	cmppl	pc, #0, 30
    2b74:	43415246 	movtmi	r5, #4678	; 0x1246
    2b78:	50455f54 	subpl	r5, r5, r4, asr pc
    2b7c:	4f4c4953 	svcmi	0x004c4953
    2b80:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2b84:	50317830 	eorspl	r7, r1, r0, lsr r8
    2b88:	5248372d 	subpl	r3, r8, #11796480	; 0xb40000
    2b8c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1c94 <g_pfnVectors-0x7ffe36c>
    2b90:	495f5151 	ldmdbmi	pc, {r0, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    2b94:	5f544942 	svcpl	0x00544942
    2b98:	0030205f 	eorseq	r2, r0, pc, asr r0
    2b9c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2ba0:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    2ba4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2ba8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2bac:	3739372e 	ldrcc	r3, [r9, -lr, lsr #14]!
    2bb0:	31333936 	teqcc	r3, r6, lsr r9
    2bb4:	36383433 			; <UNDEFINED> instruction: 0x36383433
    2bb8:	35313332 	ldrcc	r3, [r1, #-818]!	; 0xfffffcce
    2bbc:	332b6537 			; <UNDEFINED> instruction: 0x332b6537
    2bc0:	33463830 	movtcc	r3, #26672	; 0x6830
    2bc4:	5f007832 	svcpl	0x00007832
    2bc8:	5153555f 	cmppl	r3, pc, asr r5
    2bcc:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    2bd0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2bd4:	5f003233 	svcpl	0x00003233
    2bd8:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    2bdc:	45565f43 	ldrbmi	r5, [r6, #-3907]	; 0xfffff0bd
    2be0:	4f495352 	svcmi	0x00495352
    2be4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2be8:	37313032 			; <UNDEFINED> instruction: 0x37313032
    2bec:	004c3031 	subeq	r3, ip, r1, lsr r0
    2bf0:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    2bf4:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    2bf8:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    2bfc:	4148435f 	cmpmi	r8, pc, asr r3
    2c00:	5f323352 	svcpl	0x00323352
    2c04:	4f4c5f54 	svcmi	0x004c5f54
    2c08:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    2c0c:	20454552 	subcs	r4, r5, r2, asr r5
    2c10:	43520032 	cmpmi	r2, #50	; 0x32
    2c14:	50415f43 	subpl	r5, r1, r3, asr #30
    2c18:	4e453142 	dvfmism	f3, f5, f2
    2c1c:	52282052 	eorpl	r2, r8, #82	; 0x52
    2c20:	3e2d4343 	cdpcc	3, 2, cr4, cr13, cr3, {2}
    2c24:	43435272 	movtmi	r5, #12914	; 0x3272
    2c28:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
    2c2c:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
    2c30:	54530029 	ldrbpl	r0, [r3], #-41	; 0xffffffd7
    2c34:	4632334d 	ldrtmi	r3, [r2], -sp, asr #6
    2c38:	56313134 			; <UNDEFINED> instruction: 0x56313134
    2c3c:	20785445 	rsbscs	r5, r8, r5, asr #8
    2c40:	54530031 	ldrbpl	r0, [r3], #-49	; 0xffffffcf
    2c44:	4632334d 	ldrtmi	r3, [r2], -sp, asr #6
    2c48:	78313134 	ldmdavc	r1!, {r2, r4, r5, r8, ip, sp}
    2c4c:	00312045 	eorseq	r2, r1, r5, asr #32
    2c50:	52465f5f 	subpl	r5, r6, #380	; 0x17c
    2c54:	5f544341 	svcpl	0x00544341
    2c58:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    2c5c:	5f4e4f4c 	svcpl	0x004e4f4c
    2c60:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2c64:	312d5031 			; <UNDEFINED> instruction: 0x312d5031
    2c68:	5f005235 	svcpl	0x00005235
    2c6c:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    2c70:	4f485f43 	svcmi	0x00485f43
    2c74:	44455453 	strbmi	r5, [r5], #-1107	; 0xfffffbad
    2c78:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2c7c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2c80:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    2c84:	414d5f52 	cmpmi	sp, r2, asr pc
    2c88:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2c8c:	66377830 			; <UNDEFINED> instruction: 0x66377830
    2c90:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2c94:	47006666 	strmi	r6, [r0, -r6, ror #12]
    2c98:	414f4950 	cmpmi	pc, r0, asr r9	; <UNPREDICTABLE>
    2c9c:	5341425f 	movtpl	r4, #4703	; 0x125f
    2ca0:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    2ca4:	32303034 	eorscc	r3, r0, #52	; 0x34
    2ca8:	30303030 	eorscc	r3, r0, r0, lsr r0
    2cac:	4f4d7200 	svcmi	0x004d7200
    2cb0:	00524544 	subseq	r4, r2, r4, asr #10
    2cb4:	61685f5f 	cmnvs	r8, pc, asr pc
    2cb8:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    2cbc:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    2cc0:	54532865 	ldrbpl	r2, [r3], #-2149	; 0xfffff79b
    2cc4:	5f202952 	svcpl	0x00202952
    2cc8:	7361685f 	cmnvc	r1, #6225920	; 0x5f0000
    2ccc:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
    2cd0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
    2cd4:	53285f5f 			; <UNDEFINED> instruction: 0x53285f5f
    2cd8:	00295254 	eoreq	r5, r9, r4, asr r2
    2cdc:	43535953 	cmpmi	r3, #1359872	; 0x14c000
    2ce0:	455f4746 	ldrbmi	r4, [pc, #-1862]	; 25a2 <g_pfnVectors-0x7ffda5e>
    2ce4:	43495458 	movtmi	r5, #37976	; 0x9458
    2ce8:	28203252 	stmdacs	r0!, {r1, r4, r6, r9, ip, sp}
    2cec:	43535953 	cmpmi	r3, #1359872	; 0x14c000
    2cf0:	3e2d4746 	cdpcc	7, 2, cr4, cr13, cr6, {2}
    2cf4:	54584572 	ldrbpl	r4, [r8], #-1394	; 0xfffffa8e
    2cf8:	32524349 	subscc	r4, r2, #603979777	; 0x24000001
    2cfc:	3a470029 	bcc	11c2da8 <g_pfnVectors-0x6e3d258>
    2d00:	656e4f5c 	strbvs	r4, [lr, #-3932]!	; 0xfffff0a4
    2d04:	76697244 	strbtvc	r7, [r9], -r4, asr #4
    2d08:	202d2065 	eorcs	r2, sp, r5, rrx
    2d0c:	2e756e6b 	cdpcs	14, 7, cr6, cr5, cr11, {3}
    2d10:	6b2e6361 	blvs	b9ba9c <g_pfnVectors-0x7464564>
    2d14:	52505c72 	subspl	r5, r0, #29184	; 0x7200
    2d18:	43454a4f 	movtmi	r4, #23119	; 0x5a4f
    2d1c:	30325c54 	eorscc	r5, r2, r4, asr ip
    2d20:	302d3831 	eorcc	r3, sp, r1, lsr r8
    2d24:	38302d39 	ldmdacc	r0!, {r0, r3, r4, r5, r8, sl, fp, sp}
    2d28:	4b534a5f 	blmi	14d56ac <g_pfnVectors-0x6b2a954>
    2d2c:	5c4e4f57 	mcrrpl	15, 5, r4, lr, cr7
    2d30:	6c5f3930 	mrrcvs	9, 3, r3, pc, cr0	; <UNPREDICTABLE>
    2d34:	75746365 	ldrbvc	r6, [r4, #-869]!	; 0xfffffc9b
    2d38:	325c6572 	subscc	r6, ip, #478150656	; 0x1c800000
    2d3c:	2d313230 	lfmcs	f3, 4, [r1, #-192]!	; 0xffffff40
    2d40:	322d3430 	eorcc	r3, sp, #48, 8	; 0x30000000
    2d44:	6d455f38 	stclvs	15, cr5, [r5, #-224]	; 0xffffff20
    2d48:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
    2d4c:	535f6465 	cmppl	pc, #1694498816	; 0x65000000
    2d50:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
    2d54:	65445f6d 	strbvs	r5, [r4, #-3949]	; 0xfffff093
    2d58:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2d5c:	535f325c 	cmppl	pc, #92, 4	; 0xc0000005
    2d60:	305c4352 	subscc	r4, ip, r2, asr r3
    2d64:	6c625f31 	stclvs	15, cr5, [r2], #-196	; 0xffffff3c
    2d68:	5f6b6e69 	svcpl	0x006b6e69
    2d6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2d70:	324d4954 	subcc	r4, sp, #84, 18	; 0x150000
    2d74:	5341425f 	movtpl	r4, #4703	; 0x125f
    2d78:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    2d7c:	30303034 	eorscc	r3, r0, r4, lsr r0
    2d80:	30303030 	eorscc	r3, r0, r0, lsr r0
    2d84:	454d7200 	strbmi	r7, [sp, #-512]	; 0xfffffe00
    2d88:	504d524d 	subpl	r5, sp, sp, asr #4
    2d8c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2d90:	415f4343 	cmpmi	pc, r3, asr #6
    2d94:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    2d98:	4c4c5f43 	mcrrmi	15, 4, r5, ip, cr3
    2d9c:	5f474e4f 	svcpl	0x00474e4f
    2da0:	4b434f4c 	blmi	10d6ad8 <g_pfnVectors-0x6f29528>
    2da4:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    2da8:	00312045 	eorseq	r2, r1, r5, asr #32
    2dac:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    2db0:	41485f43 	cmpmi	r8, r3, asr #30
    2db4:	535f4556 	cmppl	pc, #360710144	; 0x15800000
    2db8:	5f434e59 	svcpl	0x00434e59
    2dbc:	504d4f43 	subpl	r4, sp, r3, asr #30
    2dc0:	5f455241 	svcpl	0x00455241
    2dc4:	5f444e41 	svcpl	0x00444e41
    2dc8:	50415753 	subpl	r5, r1, r3, asr r7
    2dcc:	3120345f 			; <UNDEFINED> instruction: 0x3120345f
    2dd0:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2dd4:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; 2cac <g_pfnVectors-0x7ffd354>
    2dd8:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 259f <g_pfnVectors-0x7ffda61>
    2ddc:	5f5f5058 	svcpl	0x005f5058
    2de0:	38323120 	ldmdacc	r2!, {r5, r8, ip, sp}
    2de4:	415f5f00 	cmpmi	pc, r0, lsl #30
    2de8:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    2dec:	43415f43 	movtmi	r5, #8003	; 0x1f43
    2df0:	45525f51 	ldrbmi	r5, [r2, #-3921]	; 0xfffff0af
    2df4:	0034204c 	eorseq	r2, r4, ip, asr #32
    2df8:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2dfc:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    2e00:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    2e04:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 2d40 <g_pfnVectors-0x7ffd2c0>
    2e08:	5f5f5841 	svcpl	0x005f5841
    2e0c:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    2e10:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2e14:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    2e18:	4172004c 	cmnmi	r2, ip, asr #32
    2e1c:	00485246 	subeq	r5, r8, r6, asr #4
    2e20:	48555f5f 	ldmdami	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2e24:	42495f41 	submi	r5, r9, #260	; 0x104
    2e28:	5f5f5449 	svcpl	0x005f5449
    2e2c:	5f003820 	svcpl	0x00003820
    2e30:	4345445f 	movtmi	r4, #21599	; 0x545f
    2e34:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 2d70 <g_pfnVectors-0x7ffd290>
    2e38:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; 1ff7 <g_pfnVectors-0x7ffe009>
    2e3c:	5f5f5058 	svcpl	0x005f5058
    2e40:	392d2820 	pushcc	{r5, fp, sp}
    2e44:	5f002934 	svcpl	0x00002934
    2e48:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2e4c:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    2e50:	5059545f 	subspl	r5, r9, pc, asr r4
    2e54:	205f5f45 	subscs	r5, pc, r5, asr #30
    2e58:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    2e5c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    2e60:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
    2e64:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2e68:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    2e6c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
    2e70:	4c524641 	mrrcmi	6, 4, r4, r2, cr1
    2e74:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2e78:	5f4c4244 	svcpl	0x004c4244
    2e7c:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    2e80:	5f4e4f4c 	svcpl	0x004e4f4c
    2e84:	2e32205f 	mrccs	0, 1, r2, cr2, cr15, {2}
    2e88:	34303232 	ldrtcc	r3, [r0], #-562	; 0xfffffdce
    2e8c:	34303634 	ldrtcc	r3, [r0], #-1588	; 0xfffff9cc
    2e90:	30353239 	eorscc	r3, r5, r9, lsr r2
    2e94:	31333133 	teqcc	r3, r3, lsr r1
    2e98:	36312d65 	ldrtcc	r2, [r1], -r5, ror #26
    2e9c:	5f5f004c 	svcpl	0x005f004c
    2ea0:	50544e49 	subspl	r4, r4, r9, asr #28
    2ea4:	545f5254 	ldrbpl	r5, [pc], #-596	; 2eac <g_pfnVectors-0x7ffd154>
    2ea8:	5f455059 	svcpl	0x00455059
    2eac:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
    2eb0:	5f5f0074 	svcpl	0x005f0074
    2eb4:	5f4d5241 	svcpl	0x004d5241
    2eb8:	5f534350 	svcpl	0x00534350
    2ebc:	20504656 	subscs	r4, r0, r6, asr r6
    2ec0:	5f5f0031 	svcpl	0x005f0031
    2ec4:	5f434544 	svcpl	0x00434544
    2ec8:	4c415645 	mcrrmi	6, 4, r5, r1, cr5
    2ecc:	54454d5f 	strbpl	r4, [r5], #-3423	; 0xfffff2a1
    2ed0:	5f444f48 	svcpl	0x00444f48
    2ed4:	0032205f 	eorseq	r2, r2, pc, asr r0
    2ed8:	53555f5f 	cmppl	r5, #380	; 0x17c
    2edc:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    2ee0:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    2ee4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2ee8:	55302e30 	ldrpl	r2, [r0, #-3632]!	; 0xfffff1d0
    2eec:	5f004b48 	svcpl	0x00004b48
    2ef0:	4653555f 			; <UNDEFINED> instruction: 0x4653555f
    2ef4:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    2ef8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2efc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2f00:	5f5f0030 	svcpl	0x005f0030
    2f04:	5f544e49 	svcpl	0x00544e49
    2f08:	5341454c 	movtpl	r4, #5452	; 0x154c
    2f0c:	5f323354 	svcpl	0x00323354
    2f10:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    2f14:	205f5f48 	subscs	r5, pc, r8, asr #30
    2f18:	47003233 	smladxmi	r0, r3, r2, r3
    2f1c:	444f4950 	strbmi	r4, [pc], #-2384	; 2f24 <g_pfnVectors-0x7ffd0dc>
    2f20:	59544f5f 	ldmdbpl	r4, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, lr}^
    2f24:	20524550 	subscs	r4, r2, r0, asr r5
    2f28:	49504728 	ldmdbmi	r0, {r3, r5, r8, r9, sl, lr}^
    2f2c:	3e2d444f 	cdpcc	4, 2, cr4, cr13, cr15, {2}
    2f30:	59544f72 	ldmdbpl	r4, {r1, r4, r5, r6, r8, r9, sl, fp, lr}^
    2f34:	29524550 	ldmdbcs	r2, {r4, r6, r8, sl, lr}^
    2f38:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 2f40 <g_pfnVectors-0x7ffd0c0>
    2f3c:	42495f51 	submi	r5, r9, #324	; 0x144
    2f40:	5f5f5449 	svcpl	0x005f5449
    2f44:	5f003020 	svcpl	0x00003020
    2f48:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2f4c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2f50:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    2f54:	3230342e 	eorscc	r3, r0, #771751936	; 0x2e000000
    2f58:	34333238 	ldrtcc	r3, [r3], #-568	; 0xfffffdc8
    2f5c:	38333636 	ldmdacc	r3!, {r1, r2, r4, r5, r9, sl, ip, sp}
    2f60:	38383235 	ldmdacc	r8!, {r0, r2, r4, r5, r9, ip, sp}
    2f64:	332b6536 			; <UNDEFINED> instruction: 0x332b6536
    2f68:	5f004638 	svcpl	0x00004638
    2f6c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2f70:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 2eac <g_pfnVectors-0x7ffd154>
    2f74:	5f5f4e49 	svcpl	0x005f4e49
    2f78:	312e3120 			; <UNDEFINED> instruction: 0x312e3120
    2f7c:	39343537 	ldmdbcc	r4!, {r0, r1, r2, r4, r5, r8, sl, ip, sp}
    2f80:	30353334 	eorscc	r3, r5, r4, lsr r3
    2f84:	32323238 	eorscc	r3, r2, #56, 4	; 0x80000003
    2f88:	65353738 	ldrvs	r3, [r5, #-1848]!	; 0xfffff8c8
    2f8c:	4638332d 	ldrtmi	r3, [r8], -sp, lsr #6
    2f90:	5f003233 	svcpl	0x00003233
    2f94:	5a49535f 	bpl	1257d18 <g_pfnVectors-0x6da82e8>
    2f98:	59545f45 	ldmdbpl	r4, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    2f9c:	5f5f4550 	svcpl	0x005f4550
    2fa0:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    2fa4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2fa8:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    2fac:	49720074 	ldmdbmi	r2!, {r2, r4, r5, r6}^
    2fb0:	5f00524d 	svcpl	0x0000524d
    2fb4:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    2fb8:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    2fbc:	42465f4d 	submi	r5, r6, #308	; 0x134
    2fc0:	5f5f5449 	svcpl	0x005f5449
    2fc4:	00323320 	eorseq	r3, r2, r0, lsr #6
    2fc8:	43535953 	cmpmi	r3, #1359872	; 0x14c000
    2fcc:	425f4746 	subsmi	r4, pc, #18350080	; 0x1180000
    2fd0:	20455341 	subcs	r5, r5, r1, asr #6
    2fd4:	30347830 	eorscc	r7, r4, r0, lsr r8
    2fd8:	38333130 	ldmdacc	r3!, {r4, r5, r8, ip, sp}
    2fdc:	5f003030 	svcpl	0x00003030
    2fe0:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2fe4:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 2f14 <g_pfnVectors-0x7ffd0ec>
    2fe8:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; 21a7 <g_pfnVectors-0x7ffde59>
    2fec:	5f5f5058 	svcpl	0x005f5058
    2ff0:	312d2820 			; <UNDEFINED> instruction: 0x312d2820
    2ff4:	29313230 	ldmdbcs	r1!, {r4, r5, r9, ip, sp}
    2ff8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2ffc:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    3000:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    3004:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    3008:	5f003531 	svcpl	0x00003531
    300c:	4343475f 	movtmi	r4, #14175	; 0x375f
    3010:	4f54415f 	svcmi	0x0054415f
    3014:	5f43494d 	svcpl	0x0043494d
    3018:	524f4853 	subpl	r4, pc, #5439488	; 0x530000
    301c:	4f4c5f54 	svcmi	0x004c5f54
    3020:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    3024:	20454552 	subcs	r4, r5, r2, asr r5
    3028:	45520032 	ldrbmi	r0, [r2, #-50]	; 0xffffffce
    302c:	58455f47 	stmdapl	r5, {r0, r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    3030:	5f004954 	svcpl	0x00004954
    3034:	4154555f 	cmpmi	r4, pc, asr r5
    3038:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    303c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    3040:	5f003436 	svcpl	0x00003436
    3044:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    3048:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    304c:	5f30315f 	svcpl	0x0030315f
    3050:	5f505845 	svcpl	0x00505845
    3054:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    3058:	00293733 	eoreq	r3, r9, r3, lsr r7
    305c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    3060:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    3064:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    3068:	5058455f 	subspl	r4, r8, pc, asr r5
    306c:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    3070:	3230312d 	eorscc	r3, r0, #1073741835	; 0x4000000b
    3074:	5f002931 	svcpl	0x00002931
    3078:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    307c:	5f583233 	svcpl	0x00583233
    3080:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    3084:	5f4e4f4c 	svcpl	0x004e4f4c
    3088:	2e32205f 	mrccs	0, 1, r2, cr2, cr15, {2}
    308c:	34303232 	ldrtcc	r3, [r0], #-562	; 0xfffffdce
    3090:	34303634 	ldrtcc	r3, [r0], #-1588	; 0xfffff9cc
    3094:	30353239 	eorscc	r3, r5, r9, lsr r2
    3098:	31333133 	teqcc	r3, r3, lsr r1
    309c:	36312d65 	ldrtcc	r2, [r1], -r5, ror #26
    30a0:	78323346 	ldmdavc	r2!, {r1, r2, r6, r8, r9, ip, sp}
    30a4:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    30a8:	455f544c 	ldrbmi	r5, [pc, #-1100]	; 2c64 <g_pfnVectors-0x7ffd39c>
    30ac:	5f4c4156 	svcpl	0x004c4156
    30b0:	4854454d 	ldmdami	r4, {r0, r2, r3, r6, r8, sl, lr}^
    30b4:	545f444f 	ldrbpl	r4, [pc], #-1103	; 30bc <g_pfnVectors-0x7ffcf44>
    30b8:	38315f53 	ldmdacc	r1!, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}
    30bc:	5f313636 	svcpl	0x00313636
    30c0:	205f5f33 	subscs	r5, pc, r3, lsr pc	; <UNPREDICTABLE>
    30c4:	5f5f0030 	svcpl	0x005f0030
    30c8:	5f4c4244 	svcpl	0x004c4244
    30cc:	5f534148 	svcpl	0x00534148
    30d0:	49464e49 	stmdbmi	r6, {r0, r3, r6, r9, sl, fp, lr}^
    30d4:	5954494e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, fp, lr}^
    30d8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    30dc:	415f5f00 	cmpmi	pc, r0, lsl #30
    30e0:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    30e4:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    30e8:	515f4552 	cmppl	pc, r2, asr r5	; <UNPREDICTABLE>
    30ec:	20544942 	subscs	r4, r4, r2, asr #18
    30f0:	5f5f0031 	svcpl	0x005f0031
    30f4:	5f544e49 	svcpl	0x00544e49
    30f8:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    30fc:	545f3233 	ldrbpl	r3, [pc], #-563	; 3104 <g_pfnVectors-0x7ffcefc>
    3100:	5f455059 	svcpl	0x00455059
    3104:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
    3108:	5f5f0074 	svcpl	0x005f0074
    310c:	5f4d5241 	svcpl	0x004d5241
    3110:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    3114:	5f455255 	svcpl	0x00455255
    3118:	20544153 	subscs	r4, r4, r3, asr r1
    311c:	5f5f0031 	svcpl	0x005f0031
    3120:	5f544c46 	svcpl	0x00544c46
    3124:	5f534148 	svcpl	0x00534148
    3128:	45495551 	strbmi	r5, [r9, #-1361]	; 0xfffffaaf
    312c:	414e5f54 	cmpmi	lr, r4, asr pc
    3130:	205f5f4e 	subscs	r5, pc, lr, asr #30
    3134:	5f5f0031 	svcpl	0x005f0031
    3138:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    313c:	495f464f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, r9, sl, lr}^	; <UNPREDICTABLE>
    3140:	5f5f544e 	svcpl	0x005f544e
    3144:	5f003420 	svcpl	0x00003420
    3148:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    314c:	5f58414d 	svcpl	0x0058414d
    3150:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    3154:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    3158:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    315c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    3160:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    3164:	43527200 	cmpmi	r2, #0, 4
    3168:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
    316c:	4746434c 	strbmi	r4, [r6, -ip, asr #6]
    3170:	5f5f0052 	svcpl	0x005f0052
    3174:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    3178:	435f5841 	cmpmi	pc, #4259840	; 0x410000
    317c:	20296328 	eorcs	r6, r9, r8, lsr #6
    3180:	23232063 			; <UNDEFINED> instruction: 0x23232063
    3184:	004c4c20 	subeq	r4, ip, r0, lsr #24
    3188:	324d4954 	subcc	r4, sp, #84, 18	; 0x150000
    318c:	2052535f 	subscs	r5, r2, pc, asr r3
    3190:	4d495428 	cfstrdmi	mvd5, [r9, #-160]	; 0xffffff60
    3194:	723e2d32 	eorsvc	r2, lr, #3200	; 0xc80
    3198:	00295253 	eoreq	r5, r9, r3, asr r2
    319c:	50415f5f 	subpl	r5, r1, pc, asr pc
    31a0:	335f5343 	cmpcc	pc, #201326593	; 0xc000001
    31a4:	205f5f32 	subscs	r5, pc, r2, lsr pc	; <UNPREDICTABLE>
    31a8:	5f5f0031 	svcpl	0x005f0031
    31ac:	5f4c4244 	svcpl	0x004c4244
    31b0:	4f4e4544 	svcmi	0x004e4544
    31b4:	4d5f4d52 	ldclmi	13, cr4, [pc, #-328]	; 3074 <g_pfnVectors-0x7ffcf8c>
    31b8:	5f5f4e49 	svcpl	0x005f4e49
    31bc:	64282820 	strtvs	r2, [r8], #-2080	; 0xfffff7e0
    31c0:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
    31c4:	2e342965 	vsubcs.f16	s4, s8, s11	; <UNPREDICTABLE>
    31c8:	36303439 			; <UNDEFINED> instruction: 0x36303439
    31cc:	35343635 	ldrcc	r3, [r4, #-1589]!	; 0xfffff9cb
    31d0:	32313438 	eorscc	r3, r1, #56, 8	; 0x38000000
    31d4:	34353634 	ldrtcc	r3, [r5], #-1588	; 0xfffff9cc
    31d8:	32332d65 	eorscc	r2, r3, #6464	; 0x1940
    31dc:	00294c34 	eoreq	r4, r9, r4, lsr ip
    31e0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    31e4:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    31e8:	5059545f 	subspl	r5, r9, pc, asr r4
    31ec:	205f5f45 	subscs	r5, pc, r5, asr #30
    31f0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    31f4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    31f8:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
    31fc:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    3200:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    3204:	5f00746e 	svcpl	0x0000746e
    3208:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    320c:	5f583233 	svcpl	0x00583233
    3210:	5f534148 	svcpl	0x00534148
    3214:	45495551 	strbmi	r5, [r9, #-1361]	; 0xfffffaaf
    3218:	414e5f54 	cmpmi	lr, r4, asr pc
    321c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    3220:	5f5f0031 	svcpl	0x005f0031
    3224:	5f4c4244 	svcpl	0x004c4244
    3228:	5f58414d 	svcpl	0x0058414d
    322c:	455f3031 	ldrbmi	r3, [pc, #-49]	; 3203 <g_pfnVectors-0x7ffcdfd>
    3230:	5f5f5058 	svcpl	0x005f5058
    3234:	38303320 	ldmdacc	r0!, {r5, r8, r9, ip, sp}
    3238:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    323c:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    3240:	494d5f58 	stmdbmi	sp, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    3244:	205f5f4e 	subscs	r5, pc, lr, asr #30
    3248:	32322e32 	eorscc	r2, r2, #800	; 0x320
    324c:	33373035 	teqcc	r7, #53	; 0x35
    3250:	35383538 	ldrcc	r3, [r8, #-1336]!	; 0xfffffac8
    3254:	30323730 	eorscc	r3, r2, r0, lsr r7
    3258:	2d653431 	cfstrdcs	mvd3, [r5, #-196]!	; 0xffffff3c
    325c:	46383033 			; <UNDEFINED> instruction: 0x46383033
    3260:	00783233 	rsbseq	r3, r8, r3, lsr r2
    3264:	50555072 	subspl	r5, r5, r2, ror r0
    3268:	5f005244 	svcpl	0x00005244
    326c:	5f41545f 	svcpl	0x0041545f
    3270:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    3274:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    3278:	5f5f0034 	svcpl	0x005f0034
    327c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    3280:	465f464f 	ldrbmi	r4, [pc], -pc, asr #12
    3284:	54414f4c 	strbpl	r4, [r1], #-3916	; 0xfffff0b4
    3288:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    328c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    3290:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    3294:	41485f58 	cmpmi	r8, r8, asr pc
    3298:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
    329c:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
    32a0:	5f5f5954 	svcpl	0x005f5954
    32a4:	5f003120 	svcpl	0x00003120
    32a8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    32ac:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    32b0:	52505f48 	subspl	r5, r0, #72, 30	; 0x120
    32b4:	4c49464f 	mcrrmi	6, 4, r4, r9, cr15
    32b8:	37372045 	ldrcc	r2, [r7, -r5, asr #32]!
    32bc:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    32c0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    32c4:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    32c8:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    32cc:	5f5f4854 	svcpl	0x005f4854
    32d0:	00323320 	eorseq	r3, r2, r0, lsr #6
    32d4:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    32d8:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    32dc:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    32e0:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    32e4:	32312d28 	eorscc	r2, r1, #40, 26	; 0xa00
    32e8:	5f002935 	svcpl	0x00002935
    32ec:	4345445f 	movtmi	r4, #21599	; 0x545f
    32f0:	5f383231 	svcpl	0x00383231
    32f4:	5f58414d 	svcpl	0x0058414d
    32f8:	2e39205f 	mrccs	0, 1, r2, cr9, cr15, {2}
    32fc:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    3300:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    3304:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    3308:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    330c:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    3310:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    3314:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    3318:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    331c:	31364539 	teqcc	r6, r9, lsr r5
    3320:	4c443434 	cfstrdmi	mvd3, [r4], {52}	; 0x34
    3324:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 332c <g_pfnVectors-0x7ffccd4>
    3328:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
    332c:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 3334 <g_pfnVectors-0x7ffcccc>
    3330:	5f5f4749 	svcpl	0x005f4749
    3334:	00373120 	eorseq	r3, r7, r0, lsr #2
    3338:	48545f5f 	ldmdami	r4, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    333c:	5f424d55 	svcpl	0x00424d55
    3340:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    3344:	524f5752 	subpl	r5, pc, #21495808	; 0x1480000
    3348:	205f5f4b 	subscs	r5, pc, fp, asr #30
    334c:	5f5f0031 	svcpl	0x005f0031
    3350:	33544e49 	cmpcc	r4, #1168	; 0x490
    3354:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    3358:	63202963 			; <UNDEFINED> instruction: 0x63202963
    335c:	20232320 	eorcs	r2, r3, r0, lsr #6
    3360:	5047004c 	subpl	r0, r7, ip, asr #32
    3364:	5f414f49 	svcpl	0x00414f49
    3368:	5059544f 	subspl	r5, r9, pc, asr #8
    336c:	28205245 	stmdacs	r0!, {r0, r2, r6, r9, ip, lr}
    3370:	4f495047 	svcmi	0x00495047
    3374:	723e2d41 	eorsvc	r2, lr, #4160	; 0x1040
    3378:	5059544f 	subspl	r5, r9, pc, asr #8
    337c:	00295245 	eoreq	r5, r9, r5, asr #4
    3380:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    3384:	50465f4d 	subpl	r5, r6, sp, asr #30
    3388:	465f3631 			; <UNDEFINED> instruction: 0x465f3631
    338c:	414d524f 	cmpmi	sp, pc, asr #4
    3390:	4c415f54 	mcrrmi	15, 5, r5, r1, cr4
    3394:	4e524554 	mrcmi	5, 2, r4, cr2, cr4, {2}
    3398:	56495441 	strbpl	r5, [r9], -r1, asr #8
    339c:	5f5f0045 	svcpl	0x005f0045
    33a0:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    33a4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    33a8:	5f30315f 	svcpl	0x0030315f
    33ac:	5f505845 	svcpl	0x00505845
    33b0:	3033205f 	eorscc	r2, r3, pc, asr r0
    33b4:	5f5f0038 	svcpl	0x005f0038
    33b8:	33544c46 	cmpcc	r4, #17920	; 0x4600
    33bc:	4d5f5832 	ldclmi	8, cr5, [pc, #-200]	; 32fc <g_pfnVectors-0x7ffcd04>
    33c0:	315f5841 	cmpcc	pc, r1, asr #16
    33c4:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    33c8:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    33cc:	00383033 	eorseq	r3, r8, r3, lsr r0
    33d0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    33d4:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    33d8:	414d5f52 	cmpmi	sp, r2, asr pc
    33dc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    33e0:	66667830 			; <UNDEFINED> instruction: 0x66667830
    33e4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    33e8:	00556666 	subseq	r6, r5, r6, ror #12
    33ec:	42445f5f 	submi	r5, r4, #380	; 0x17c
    33f0:	41485f4c 	cmpmi	r8, ip, asr #30
    33f4:	45445f53 	strbmi	r5, [r4, #-3923]	; 0xfffff0ad
    33f8:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    33fc:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    3400:	45527400 	ldrbmi	r7, [r2, #-1024]	; 0xfffffc00
    3404:	43525f47 	cmpmi	r2, #284	; 0x11c
    3408:	50470043 	subpl	r0, r7, r3, asr #32
    340c:	5f414f49 	svcpl	0x00414f49
    3410:	4c524641 	mrrcmi	6, 4, r4, r2, cr1
    3414:	50472820 	subpl	r2, r7, r0, lsr #16
    3418:	2d414f49 	stclcs	15, cr4, [r1, #-292]	; 0xfffffedc
    341c:	4641723e 			; <UNDEFINED> instruction: 0x4641723e
    3420:	00294c52 	eoreq	r4, r9, r2, asr ip
    3424:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    3428:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    342c:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    3430:	52435f45 	subpl	r5, r3, #276	; 0x114
    3434:	00323343 	eorseq	r3, r2, r3, asr #6
    3438:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    343c:	5f323354 	svcpl	0x00323354
    3440:	5f58414d 	svcpl	0x0058414d
    3444:	455f3031 	ldrbmi	r3, [pc, #-49]	; 341b <g_pfnVectors-0x7ffcbe5>
    3448:	5f5f5058 	svcpl	0x005f5058
    344c:	00383320 	eorseq	r3, r8, r0, lsr #6
    3450:	51515f5f 	cmppl	r1, pc, asr pc
    3454:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    3458:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    345c:	5f5f0037 	svcpl	0x005f0037
    3460:	4152464c 	cmpmi	r2, ip, asr #12
    3464:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 3360 <g_pfnVectors-0x7ffcca0>
    3468:	5f5f5841 	svcpl	0x005f5841
    346c:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    3470:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3474:	50464646 	subpl	r4, r6, r6, asr #12
    3478:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    347c:	5f5f0052 	svcpl	0x005f0052
    3480:	5f414455 	svcpl	0x00414455
    3484:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    3488:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    348c:	5f5f0032 	svcpl	0x005f0032
    3490:	5f4d5241 	svcpl	0x004d5241
    3494:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    3498:	4d45375f 	stclmi	7, cr3, [r5, #-380]	; 0xfffffe84
    349c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    34a0:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    34a4:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    34a8:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    34ac:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 33e8 <g_pfnVectors-0x7ffcc18>
    34b0:	5f5f5841 	svcpl	0x005f5841
    34b4:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    34b8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    34bc:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
    34c0:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    34c4:	4d5f444f 	cfldrdmi	mvd4, [pc, #-316]	; 3390 <g_pfnVectors-0x7ffcc70>
    34c8:	5245444f 	subpl	r4, r5, #1325400064	; 0x4f000000
    34cc:	50472820 	subpl	r2, r7, r0, lsr #16
    34d0:	2d444f49 	stclcs	15, cr4, [r4, #-292]	; 0xfffffedc
    34d4:	4f4d723e 	svcmi	0x004d723e
    34d8:	29524544 	ldmdbcs	r2, {r2, r6, r8, sl, lr}^
    34dc:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 34e4 <g_pfnVectors-0x7ffcb1c>
    34e0:	34364345 	ldrtcc	r4, [r6], #-837	; 0xfffffcbb
    34e4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    34e8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    34ec:	38332d45 	ldmdacc	r3!, {r0, r2, r6, r8, sl, fp, sp}
    34f0:	00444433 	subeq	r4, r4, r3, lsr r4
    34f4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    34f8:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    34fc:	59545f52 	ldmdbpl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    3500:	5f5f4550 	svcpl	0x005f4550
    3504:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    3508:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    350c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    3510:	5f5f0074 	svcpl	0x005f0074
    3514:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    3518:	5f58414d 	svcpl	0x0058414d
    351c:	5f58414d 	svcpl	0x0058414d
    3520:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    3524:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3528:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    352c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3530:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3534:	004c4c55 	subeq	r4, ip, r5, asr ip
    3538:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    353c:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    3540:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    3544:	5059545f 	subspl	r5, r9, pc, asr r4
    3548:	205f5f45 	subscs	r5, pc, r5, asr #30
    354c:	00746e69 	rsbseq	r6, r4, r9, ror #28
    3550:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    3554:	43415246 	movtmi	r5, #4678	; 0x1246
    3558:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    355c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    3560:	2e302d28 	cdpcs	13, 3, cr2, cr0, cr8, {1}
    3564:	524c4c35 	subpl	r4, ip, #13568	; 0x3500
    3568:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    356c:	29524c4c 	ldmdbcs	r2, {r2, r3, r6, sl, fp, lr}^
    3570:	415f5f00 	cmpmi	pc, r0, lsl #30
    3574:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    3578:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    357c:	465f4552 			; <UNDEFINED> instruction: 0x465f4552
    3580:	3120414d 			; <UNDEFINED> instruction: 0x3120414d
    3584:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 268c <g_pfnVectors-0x7ffd974>
    3588:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    358c:	5f544341 	svcpl	0x00544341
    3590:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    3594:	5f4e4f4c 	svcpl	0x004e4f4c
    3598:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    359c:	362d5031 			; <UNDEFINED> instruction: 0x362d5031
    35a0:	4c4c5534 	cfstr64mi	mvdx5, [ip], {52}	; 0x34
    35a4:	5f5f0052 	svcpl	0x005f0052
    35a8:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    35ac:	5341485f 	movtpl	r4, #6239	; 0x185f
    35b0:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    35b4:	5f4d524f 	svcpl	0x004d524f
    35b8:	0031205f 	eorseq	r2, r1, pc, asr r0
    35bc:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    35c0:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    35c4:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    35c8:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 350c <g_pfnVectors-0x7ffcaf4>
    35cc:	5f5f5841 	svcpl	0x005f5841
    35d0:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    35d4:	00666666 	rsbeq	r6, r6, r6, ror #12
    35d8:	50534f72 	subspl	r4, r3, r2, ror pc
    35dc:	52444545 	subpl	r4, r4, #289406976	; 0x11400000
    35e0:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    35e4:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    35e8:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
    35ec:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    35f0:	205f5f47 	subscs	r5, pc, r7, asr #30
    35f4:	5f003335 	svcpl	0x00003335
    35f8:	4345445f 	movtmi	r4, #21599	; 0x545f
    35fc:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 352c <g_pfnVectors-0x7ffcad4>
    3600:	5f544e41 	svcpl	0x00544e41
    3604:	5f474944 	svcpl	0x00474944
    3608:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    360c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    3610:	485f544c 	ldmdami	pc, {r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    3614:	445f5341 	ldrbmi	r5, [pc], #-833	; 361c <g_pfnVectors-0x7ffc9e4>
    3618:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    361c:	205f5f4d 	subscs	r5, pc, sp, asr #30
    3620:	5f5f0031 	svcpl	0x005f0031
    3624:	43434155 	movtmi	r4, #12629	; 0x3155
    3628:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    362c:	5f544942 	svcpl	0x00544942
    3630:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    3634:	53595300 	cmppl	r9, #0, 6
    3638:	5f474643 	svcpl	0x00474643
    363c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    3640:	20335243 	eorscs	r5, r3, r3, asr #4
    3644:	53595328 	cmppl	r9, #40, 6	; 0xa0000000
    3648:	2d474643 	stclcs	6, cr4, [r7, #-268]	; 0xfffffef4
    364c:	5845723e 	stmdapl	r5, {r1, r2, r3, r4, r5, r9, ip, sp, lr}^
    3650:	52434954 	subpl	r4, r3, #84, 18	; 0x150000
    3654:	Address 0x00003654 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000188 	stmdaeq	r0, {r3, r7, r8}
  1c:	000000d4 	ldrdeq	r0, [r0], -r4
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  28:	0d0d6002 	stceq	0, cr6, [sp, #-8]
  2c:	000ec742 	andeq	ip, lr, r2, asr #14
  30:	00000024 	andeq	r0, r0, r4, lsr #32
  34:	00000000 	andeq	r0, r0, r0
  38:	0800025c 	stmdaeq	r0, {r2, r3, r4, r6, r9}
  3c:	00000050 	andeq	r0, r0, r0, asr r0
  40:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  44:	100e4101 	andne	r4, lr, r1, lsl #2
  48:	5d070d41 	stcpl	13, cr0, [r7, #-260]	; 0xfffffefc
  4c:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  50:	0ec7420d 	cdpeq	2, 12, cr4, cr7, cr13, {0}
  54:	00000000 	andeq	r0, r0, r0
  58:	00000018 	andeq	r0, r0, r8, lsl r0
  5c:	00000000 	andeq	r0, r0, r0
  60:	080002ac 	stmdaeq	r0, {r2, r3, r5, r7, r9}
  64:	000000e0 	andeq	r0, r0, r0, ror #1
  68:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  6c:	41018e02 	tstmi	r1, r2, lsl #28
  70:	0000070d 	andeq	r0, r0, sp, lsl #14
