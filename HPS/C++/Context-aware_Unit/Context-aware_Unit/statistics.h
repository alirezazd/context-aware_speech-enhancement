#pragma once
#include <vector>
#include <numeric>
#include <algorithm>
#include <cmath>

float Fast_standard_deviation(std::vector<float>);
float Standard_error(std::vector<float>);
float Mean(std::vector<float>);
std::vector<float> Normalize(std::vector<float>);
std::vector<float> Normalize(std::vector<float>, float);