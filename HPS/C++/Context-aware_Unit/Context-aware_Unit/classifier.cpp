#include "Classifier.h"

Classifier::Classifier(std::string model_path)
	:model(tflite::FlatBufferModel::BuildFromFile(model_path.c_str())) {
	Check_model();
	Build_interpreter();
}

void Classifier::Check_model() {
	if (!model) Printm('e', "Fialed to load the classifier model.");
}

void Classifier::Build_interpreter() {
	if (tflite::InterpreterBuilder(*model, resolver)(&interpreter) != kTfLiteOk) {
		Printm('e', "Faild to build the classifier interpreter from file.");
	}
	interpreter->AllocateTensors();
	input = interpreter->typed_input_tensor<float>(0);
	output = interpreter->typed_output_tensor<float>(0);
}

bool Classifier::Predict(int noise_type, float SNR_level) {
	Translate_input(noise_type, SNR_level);
	Write_input();
	interpreter->Invoke();
	Translate_output();
	input_buffer.clear();
	return output_buffer;
}

void Classifier::Translate_input(int noise_type, float SNR_level) {
	input_buffer.push_back((float)noise_type / MAX_NOISE_TYPE);
	input_buffer.push_back(SNR_level / MAX_SNR);
	input_buffer.push_back(input_buffer.back() * input_buffer.back());
}

void Classifier::Write_input() {
	for (std::vector<float>::iterator it = input_buffer.begin(); it != input_buffer.end(); it++) {
		*input = *it;
		input++;
	}
	input -= input_buffer.size();
}

void::Classifier::Translate_output() {
	output_buffer = !(*output > 0);
}