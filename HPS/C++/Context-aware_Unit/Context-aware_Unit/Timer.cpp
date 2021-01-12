#include "Timer.h"


Timer::Timer()
	:init_flag(true) {}

void Timer::Set_time_point()
{
	time_point = std::chrono::high_resolution_clock::now();
	if (init_flag) init_flag = false;
}

std::chrono::high_resolution_clock::time_point Timer::Get_time_point() {
	return time_point;
}

float Timer::Get_value() {
	if(init_flag) return std::numeric_limits<float>::infinity();
	return std::chrono::duration_cast<std::chrono::duration<float>>(std::chrono::high_resolution_clock::now() - time_point).count();
}

float Timer::Get_value(std::chrono::high_resolution_clock::time_point custom_time_point) {
	return std::chrono::duration_cast<std::chrono::duration<float>>(time_point - custom_time_point).count();
}