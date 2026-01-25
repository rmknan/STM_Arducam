#include "Stm32Hal.h"
#include "main.h"

extern SPI_HandleTypeDef hspi4;

void spiBegin(void);
uint8_t spiReadWriteByte(uint8_t val);
void spiCsHigh(int pin);
void spiCsLow(int pin);
void spiCsOutputMode(int pin);
void delayMs(int val);

void spiBegin(void)
{
    
}

void spiCsOutputMode(int pin)
{

}

uint8_t spiReadWriteByte(uint8_t val)
{
    uint8_t rx_data = 0;
    HAL_SPI_TransmitReceive(&hspi4, &val, &rx_data, 1, 100);
    return rx_data;
}

void spiCsHigh(int pin)
{
    // To set the PE4 pin high
    HAL_GPIO_WritePin(GPIOE, GPIO_PIN_4, GPIO_PIN_SET);
}

void spiCsLow(int pin)
{
    // To reset the PE4 pin
    HAL_GPIO_WritePin(GPIOE, GPIO_PIN_4, GPIO_PIN_RESET);
}

void delayMs (int val)
{
    HAL_Delay(val);
}
