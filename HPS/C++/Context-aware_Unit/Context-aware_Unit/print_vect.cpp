#include "Print_vect.h"

void Print_vect(std::vector<std::string>& input_vect, std::string title) {
	std::cout << title;
	for (std::vector<std::string>::iterator it = input_vect.begin(); it != input_vect.end(); it++) {
		std::cout << "\t" + *it + "\t";
	}
	std::cout << std::endl;
}

void Print_vect(std::vector<int>& input_vect, std::string title) {
	std::cout << title;
	for (std::vector<int>::iterator it = input_vect.begin(); it != input_vect.end(); it++) {
		std::cout << "\t" + std::to_string(*it) + "\t";
	}
	std::cout << std::endl;
}

void Print_vect(std::vector<float>& input_vect, std::string title) {
	std::cout << title;
	for (std::vector<float>::iterator it = input_vect.begin(); it != input_vect.end(); it++) {
		std::cout << "\t" + std::to_string(*it) + "\t";
	}
	std::cout << std::endl;
}