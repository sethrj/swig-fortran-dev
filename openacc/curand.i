/* File : curand.i */
%module curand

%{
#include "curand.h"
%}

/* Let's just grab the original header file here */
%include "curand.h"

/* vim: set ts=2 sw=2 sts=2 tw=129 : */
