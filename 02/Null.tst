// File name: projects/01/Null.tst
// Author: Jonathan Simon Jones
// Date 01_07_13

load Null.hdl,
output-file Null.out,
compare-to Null.cmp,
output-list in%B3.1.3 out%B3.1.3;

set in 0,
eval,
output;

set in 1,
eval,
output;
