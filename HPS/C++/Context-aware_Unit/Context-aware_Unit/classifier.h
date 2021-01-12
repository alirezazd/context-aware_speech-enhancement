#pragma once
#include <cstdio>
#include <string>
#include "Printm.h"
#include "statistics.h"
#include "config.h"
#include "tensorflow/lite/interpreter.h"
#include "tensorflow/lite/kernels/register.h"
#include "tensorflow/lite/model.h"
class Classifier
{
public:
	Classifier(std::string);
	bool Predict(int, float);
private:
	std::unique_ptr<tflite::FlatBufferModel> model;
	tflite::ops::builtin::BuiltinOpResolver resolver;
	std::unique_ptr<tflite::Interpreter> interpreter;
	float* input;
	float* output;
	std::vector<float> input_buffer;
	bool output_buffer;

	void Build_interpreter();
	void Check_model();
	void Translate_input(int, float);
	void Translate_output();
	void Write_input();
};