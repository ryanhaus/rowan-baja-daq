#include <stdbool.h>
#include <stdint.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_spi.h>

int main(void)
{
    hal_system_init();
    hal_spi_init();

    uint8_t tx_buf[] = { 0xA5, 0x5A, 0x01, 0x02 };
    uint8_t rx_buf[sizeof(tx_buf)] = { 0 };

    while (true)
    {
        LED_On();

        hal_system_delay_ms(10);

        // perform full-duplex transfer
        bool xfer_ok = hal_spi_transfer(tx_buf, rx_buf, sizeof(tx_buf));
        hal_system_delay_ms(40);

        LED_Off();

        // blink faster when ok, slower when not
        hal_system_delay_ms(xfer_ok ? 200 : 500);
    }

    return -1;
}
