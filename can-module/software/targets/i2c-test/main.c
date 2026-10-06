#include <stdbool.h>
#include <stdint.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_i2c.h>

int main(void)
{
    hal_system_init();
    hal_i2c_init();

    const uint16_t slave_addr = 0x55;
    uint8_t write_payload[] = { 0x10, 0xAA, 0xBB, 0xCC }; // Reg 0x10 + data
    uint8_t reg_addr = 0x10;
    uint8_t read_buf[3] = { 0 };

    while (true)
    {
        LED_On();
        
        // write to slave
        bool write_ok = hal_i2c_write(slave_addr, write_payload, sizeof(write_payload));
        hal_system_delay_ms(10);

        // read from slave
        bool read_ok = hal_i2c_write_read(slave_addr, &reg_addr, sizeof(reg_addr), read_buf, sizeof(read_buf));
        hal_system_delay_ms(40);

        LED_Off();

        // blink fast when ok, slow when not
        hal_system_delay_ms((write_ok || read_ok) ? 200 : 500);
    }

    return -1;
}
