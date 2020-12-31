#pragma once
#include <vector>
#include <numeric>
#include <algorithm>
#include <cmath>
class statistics
{
public:
	double Fast_standard_deviation(std::vector<double>);
	double Standard_error(std::vector<double>);
	double Mean(std::vector<double>);
};