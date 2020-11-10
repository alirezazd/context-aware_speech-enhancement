#include "statistics.h"

double statistics::Fast_standard_deviation(std::vector<double> input_vect) {
	double mean{ Mean(input_vect) }, acc{ 0.0 };
	for_each(begin(input_vect), end(input_vect), [&](const double d){
		acc += (d - mean) * (d - mean);
		});
	return sqrt(acc / (input_vect.size() - 1));
}

double statistics::Standard_error(std::vector<double> input_vect) {
	return Fast_standard_deviation(input_vect) / sqrt(input_vect.size());
}

double statistics::Mean(std::vector<double> input_vect) {
	return accumulate(begin(input_vect), end(input_vect), 0.0) / input_vect.size();
}
//cooment