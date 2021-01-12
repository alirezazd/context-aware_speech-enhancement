#include "fixdt.h"

int16_t to_fixed(float input, int exponent_size) {
	return (int16_t)round(input * (float)(1 << exponent_size));
}

float to_float(int16_t input, int exponent_size) {
	return ((float)input / (float)(1 << exponent_size));
}

float to_float(uint16_t input, int exponent_size) {
	return ((float)input / (float)(1 << exponent_size));
}