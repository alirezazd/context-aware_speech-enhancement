#include "statistics.h"

float Fast_standard_deviation(std::vector<float> input_vect) {
	float mean{ Mean(input_vect) }, acc{ 0.0f };
	for_each(begin(input_vect), end(input_vect), [&](const float d){
		acc += (d - mean) * (d - mean);
		});
	return (float)sqrt(acc / ((float)input_vect.size() - 1.0f));
}

float Standard_error(std::vector<float> input_vect) {
	return Fast_standard_deviation(input_vect) / (float)sqrt(input_vect.size());
}

float Mean(std::vector<float> input_vect) {
	return (float)accumulate(begin(input_vect), end(input_vect), 0.0f) / (float)input_vect.size();
}

std::vector<float> Normalize(std::vector<float> input_vect) {
	float max = *(std::max_element(input_vect.begin(), input_vect.end()));
	for (std::vector<float>::iterator it = input_vect.begin(); it != input_vect.end(); it++) {
		*it = (*it / max);
	}
	return input_vect;
}

std::vector<float> Normalize(std::vector<float> input_vect, float max) {
	for (std::vector<float>::iterator it = input_vect.begin(); it != input_vect.end(); it++) {
		*it = (*it / max);
	}
	return input_vect;
}