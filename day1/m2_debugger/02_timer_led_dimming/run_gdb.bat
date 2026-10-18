arm-none-eabi-gdb  -s "out.elf" -ex "target remote :3333" -ex "load"  -ex "b EXTI0_IRQHandler" -ex "continue" 
