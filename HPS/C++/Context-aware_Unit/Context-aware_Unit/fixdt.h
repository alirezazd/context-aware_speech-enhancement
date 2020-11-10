#pragma once
#include <cinttypes>
#include <cmath>

int16_t to_fixed(float input, int exponent_size);
float to_float(int16_t input, int exponent_size);
//cooment