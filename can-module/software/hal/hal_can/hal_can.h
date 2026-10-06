#pragma once
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

void hal_can_init();
bool hal_can_send(uint32_t id, const uint8_t* data, size_t size);

typedef struct
{
    uint32_t id;
    uint8_t data[8];
    size_t size;
    bool is_extended;
} hal_can_frame_t;

bool hal_can_receive(hal_can_frame_t* frame);
size_t hal_can_available(void);
