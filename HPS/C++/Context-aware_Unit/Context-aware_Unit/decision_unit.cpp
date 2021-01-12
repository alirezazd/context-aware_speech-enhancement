#include "decision_unit.h"

decision_unit::decision_unit(Classifier* clsfr_)
	:clsfr(clsfr_), successive_SNR_count(0), previous_noise_type(UNKNOWN_NOISE) , count(0){

}

int decision_unit::Make_decision(int noise_type, float SNR, float reconfig_time_span, int current_algorithm)
{
	std::cout << count<< "\t\tNoise type:\t" << noise_type << "\t\t" << "Input SNR:\t" << SNR<<std::endl;
	count++;
	SNR = Compress_SNR(SNR);
	if (reconfig_time_span < MIN_RECONFIG_TIME_SPAN) {
		current_prediction = clsfr->Predict(noise_type, SNR);
		current_noise_type = noise_type;
		if ((current_prediction != current_algorithm) && (previous_noise_type == current_noise_type)) {
			successive_SNR_count++;
		}
		else {
			successive_SNR_count = 1;
		}
		previous_prediction = current_prediction;
		previous_noise_type = noise_type;
		return -1;
	}

	else if (noise_type != previous_noise_type) {
		current_prediction = clsfr->Predict(noise_type, SNR);
		successive_SNR_count = 1;
		previous_prediction = current_prediction;
		previous_noise_type = noise_type;
		std::cout << "Reconfig issued due to change in noise type." << std::endl;
		return current_prediction;
	}

	else if (successive_SNR_count < MIN_SUCCESSIVE_SNR_COUNT) {
		current_prediction = clsfr->Predict(noise_type, SNR);
		if ((current_prediction != current_algorithm) && (previous_noise_type == current_noise_type)) {
			successive_SNR_count++;
		}
		else {
			successive_SNR_count = 1;
		}
		previous_prediction = current_prediction;
		return -1;
	}
	else {
		current_prediction = clsfr->Predict(noise_type, SNR);
		if ((current_prediction != current_algorithm) && (previous_noise_type == current_noise_type)) {
			successive_SNR_count++;
		}
		else {
			successive_SNR_count = 1;
		}
		previous_prediction = current_prediction;
		if (current_algorithm != current_prediction) {
			std::cout << "Reconfig issued due to change in SNR." << std::endl;
			return current_prediction;
		}
		return -1;
	}
}

float decision_unit::Compress_SNR(float SNR)
{
	if (SNR > MAX_SNR) SNR = MAX_SNR;
	else if (SNR < MIN_SNR) SNR = MIN_SNR;
	return SNR;
}