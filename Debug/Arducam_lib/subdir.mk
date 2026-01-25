################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Arducam_lib/ArducamCamera.c 

OBJS += \
./Arducam_lib/ArducamCamera.o 

C_DEPS += \
./Arducam_lib/ArducamCamera.d 


# Each subdirectory must supply rules for building sources it contributes
Arducam_lib/%.o Arducam_lib/%.su Arducam_lib/%.cyclo: ../Arducam_lib/%.c Arducam_lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"/home/rmknan/STM32CubeIDE/workspace_1.15.0/SPI_Arducam/Arducam_lib" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Arducam_lib

clean-Arducam_lib:
	-$(RM) ./Arducam_lib/ArducamCamera.cyclo ./Arducam_lib/ArducamCamera.d ./Arducam_lib/ArducamCamera.o ./Arducam_lib/ArducamCamera.su

.PHONY: clean-Arducam_lib

