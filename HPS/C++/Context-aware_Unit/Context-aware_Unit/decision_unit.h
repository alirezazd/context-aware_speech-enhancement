#pragma once
#include <cstddef>
#include <string>
#include <vector>
#include "Classifier.h"

class decision_unit
{
public:
	decision_unit(Classifier*);
	int Make_decision(int, float, float, int);

private:

	Classifier* clsfr;
	int successive_SNR_count;
	int previous_noise_type;
	int previous_prediction;
	int current_prediction;
	int current_noise_type;

	float Compress_SNR(float);


	int count;
};
