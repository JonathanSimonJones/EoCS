// Name: code.cpp
// Project: nand2tetris parser
// Author: Jonathan Simon Jones
// Date: 11 Sep 13

#include "code.hpp"
using std::string; // Not sure if necessary

code::code()
{
}

code::~code()
{
}

string code::dest(string mnemnonic)
{
  string returnWord("dest");
  return returnWord;
}

string code::comp(string mnemonic)
{
  string returnWord("comp");
  return returnWord;
}

string code::jump(string mnemonic)
{
  string returnWord("jump");
  return returnWord;
}
