#include "Find_vect.h"

int Find_vect(std::string item, std::vector<std::string>& input_vect) {
	
	typename std::vector<std::string>::iterator it = std::find(input_vect.begin(), input_vect.end(), item);
	if (it != input_vect.end()) {
		return (it - input_vect.begin());
	}
	else {
		return -1;
	}
}