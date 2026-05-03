#pragma once
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

void hal_can_init();
bool hal_can_send(uint32_t id, const uint8_t* data, size_t size);
