#pragma once
#include <iostream>
#include <iomanip>
#include <string>
#include <sstream>
/// <summary>
/// Function to output custom formated messages based on std::cout.
/// </summary>
/// <param name="_type">{'i' : INFO, 'w' : Warning, 'e' : Error, 'r' : Raw, 'c' : Clear screen}</param>
/// <param name="_message">Output message string to be printed.</param>
/// <param name="lvl">Indent level basically its std::setw() value.</param>
/// <param name="visible">IF this is flase no output will be printed and only the string will be returned.</param>
/// <returns>message string</returns>
std::string printm(char _type, std::string _message = "", int lvl = 0, bool visible = true);