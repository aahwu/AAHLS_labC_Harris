############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_harris_prj
set_top harris
add_files harris.cpp
add_files harris.h
add_files -tb dst.txt
add_files -tb harris_test.cpp
add_files -tb src.txt
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 6 -name default
source "./hls_harris_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
