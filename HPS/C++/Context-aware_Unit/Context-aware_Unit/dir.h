#pragma once
#include <dirent.h>
#include <vector>
#include <string>
#include <cstring>
/// <summary>
/// A function to show all dirctory contents or show contents for a specific extension.based on lightwright protable library "dirent.h"
/// </summary>
/// <param name="path">Path to browse.</param>
/// <param name="ext">(optional) only list specific extension.</param>
/// <returns>std::vector of Std::string containing list of file names.</returns>
std::vector<std::string> dir(std::string path, std::string ext = "NULL");