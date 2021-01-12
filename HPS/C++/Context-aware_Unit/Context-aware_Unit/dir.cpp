#include "dir.h"

std::vector<std::string> dir(std::string path, std::string ext) {
	std::vector<std::string> file_list;
	DIR* dir = opendir(path.c_str());
	struct dirent* ent;
	unsigned int count = 0;
	while ((ent = readdir(dir)) != NULL) {
		if (strcmp(ent->d_name, ".") != 0 && strcmp(ent->d_name, "..") != 0) {
			if ((strcmp(ext.c_str(), "NULL")) != 0 && strstr(ent->d_name, ext.c_str())) {
				count++;
				file_list.push_back(ent->d_name);
			}
		}
	}
	closedir(dir);
	return file_list;
}