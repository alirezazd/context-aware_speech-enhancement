#pragma once
#include <chrono>
#include <limits>

class Timer
{
public:
	Timer();
	void Set_time_point();
	std::chrono::high_resolution_clock::time_point Get_time_point();
	float Get_value();
	float Get_value(std::chrono::high_resolution_clock::time_point);

private:
	bool init_flag;
	std::chrono::high_resolution_clock::time_point time_point;
};

