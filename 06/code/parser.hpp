// nand2tetris/projects/06/code/parser.hpp
// Definitions for parser module of assembler
#ifndef PARSER_HPP
#define PARSER_HPP

#include "commandType.hpp"
#include "string"
using std::string;

class parser
{
public:
  parser();
  bool hasMoreCommands();
  void advance();
  commandType commandType();
  string symbol();
  string dest();
  string comp();
  string jump();
private:
};

#endif PARSER_HPP
