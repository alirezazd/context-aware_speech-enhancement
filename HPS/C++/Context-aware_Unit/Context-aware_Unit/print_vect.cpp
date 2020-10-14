#include "print_vect.h"

void print_vect(std::vector<std::string> const &input_vect, std::string title){
	std::cout << title;
	for (unsigned int i = 0; i < input_vect.size(); i++) {
		std::cout <<"\t"+input_vect.at(i)+"\t";
	}
	std::cout << std::endl;
}