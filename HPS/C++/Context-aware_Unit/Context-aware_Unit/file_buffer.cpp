#include "file_buffer.h"

file_buffer::file_buffer(const char* path) {
	FILE* f = fopen(path, "rb");
	fseek(f, 0, SEEK_END);
	size = ftell(f);
	fseek(f, 0, SEEK_SET);
	data = new char[size + 1];
	fread(data, 1, size, f);
	fclose(f);
}

file_buffer::~file_buffer() {
	delete data;
}