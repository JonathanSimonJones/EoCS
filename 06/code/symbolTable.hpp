// Name: SymbolTable.hpp
// Project: nand2tetris parser
// Author: Jonathan Simon Jones
// Date: 17 Sep 13

#ifndef SYMBOL_TABLE_HPP
#define SYMBOL_TABLE_HPP

#include <string>
using std::string;

class symbolTable
{
public:
  symbolTable();
  void addEntry(string symbol, int address);
  bool contains(string symbol);
  int getAddress(string symbol);
};

#endif // SYMBOL_TABLE_HPP
