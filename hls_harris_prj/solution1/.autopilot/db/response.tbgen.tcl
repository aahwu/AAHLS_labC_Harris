set moduleName response
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {response}
set C_modelType { void 0 }
set C_modelArgList {
	{ alpha double 64 regular {fifo 0}  }
	{ SxxStream int 256 regular {fifo 0 volatile } {global 0}  }
	{ SyyStream int 256 regular {fifo 0 volatile } {global 0}  }
	{ SxyStream int 256 regular {fifo 0 volatile } {global 0}  }
	{ RStream int 256 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "alpha", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "SxxStream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "SyyStream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "SxyStream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "RStream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ alpha_dout sc_in sc_lv 64 signal 0 } 
	{ alpha_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ alpha_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ alpha_empty_n sc_in sc_logic 1 signal 0 } 
	{ alpha_read sc_out sc_logic 1 signal 0 } 
	{ SxxStream_dout sc_in sc_lv 256 signal 1 } 
	{ SxxStream_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ SxxStream_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ SxxStream_empty_n sc_in sc_logic 1 signal 1 } 
	{ SxxStream_read sc_out sc_logic 1 signal 1 } 
	{ SyyStream_dout sc_in sc_lv 256 signal 2 } 
	{ SyyStream_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ SyyStream_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ SyyStream_empty_n sc_in sc_logic 1 signal 2 } 
	{ SyyStream_read sc_out sc_logic 1 signal 2 } 
	{ SxyStream_dout sc_in sc_lv 256 signal 3 } 
	{ SxyStream_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ SxyStream_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ SxyStream_empty_n sc_in sc_logic 1 signal 3 } 
	{ SxyStream_read sc_out sc_logic 1 signal 3 } 
	{ RStream_din sc_out sc_lv 256 signal 4 } 
	{ RStream_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ RStream_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ RStream_full_n sc_in sc_logic 1 signal 4 } 
	{ RStream_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "alpha_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "alpha", "role": "dout" }} , 
 	{ "name": "alpha_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "alpha", "role": "num_data_valid" }} , 
 	{ "name": "alpha_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "alpha", "role": "fifo_cap" }} , 
 	{ "name": "alpha_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alpha", "role": "empty_n" }} , 
 	{ "name": "alpha_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alpha", "role": "read" }} , 
 	{ "name": "SxxStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "SxxStream", "role": "dout" }} , 
 	{ "name": "SxxStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxxStream", "role": "num_data_valid" }} , 
 	{ "name": "SxxStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxxStream", "role": "fifo_cap" }} , 
 	{ "name": "SxxStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxxStream", "role": "empty_n" }} , 
 	{ "name": "SxxStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxxStream", "role": "read" }} , 
 	{ "name": "SyyStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "SyyStream", "role": "dout" }} , 
 	{ "name": "SyyStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SyyStream", "role": "num_data_valid" }} , 
 	{ "name": "SyyStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SyyStream", "role": "fifo_cap" }} , 
 	{ "name": "SyyStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SyyStream", "role": "empty_n" }} , 
 	{ "name": "SyyStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SyyStream", "role": "read" }} , 
 	{ "name": "SxyStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "SxyStream", "role": "dout" }} , 
 	{ "name": "SxyStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxyStream", "role": "num_data_valid" }} , 
 	{ "name": "SxyStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxyStream", "role": "fifo_cap" }} , 
 	{ "name": "SxyStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxyStream", "role": "empty_n" }} , 
 	{ "name": "SxyStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxyStream", "role": "read" }} , 
 	{ "name": "RStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "RStream", "role": "din" }} , 
 	{ "name": "RStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RStream", "role": "num_data_valid" }} , 
 	{ "name": "RStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "RStream", "role": "fifo_cap" }} , 
 	{ "name": "RStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RStream", "role": "full_n" }} , 
 	{ "name": "RStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "RStream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "35"],
		"CDFG" : "response",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2164", "EstimateLatencyMax" : "2164",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "alpha", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "alpha_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxxStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "SxxStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "SyyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "SyyStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "SxyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "SxyStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "RStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "RStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2158", "EstimateLatencyMax" : "2158",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln325", "Type" : "None", "Direction" : "I"},
			{"Name" : "SxxStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "SxxStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SyyStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "SyyStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxyStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "SxyStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "RStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "RStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_325_1_VITIS_LOOP_326_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter15", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter15", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U47", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U48", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U49", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U50", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U51", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U52", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U53", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U54", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U55", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U56", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U57", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U58", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U59", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U60", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U61", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U62", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U63", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U64", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U65", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U66", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U67", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U68", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U69", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U70", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U71", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U72", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U73", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U74", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U75", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U76", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U77", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U78", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ashr_54ns_32ns_54_2_1_U85", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	response {
		alpha {Type I LastRead 0 FirstWrite -1}
		SxxStream {Type I LastRead 1 FirstWrite -1}
		SyyStream {Type I LastRead 1 FirstWrite -1}
		SxyStream {Type I LastRead 1 FirstWrite -1}
		RStream {Type O LastRead -1 FirstWrite 15}}
	response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2 {
		zext_ln325 {Type I LastRead 0 FirstWrite -1}
		SxxStream {Type I LastRead 1 FirstWrite -1}
		SyyStream {Type I LastRead 1 FirstWrite -1}
		SxyStream {Type I LastRead 1 FirstWrite -1}
		RStream {Type O LastRead -1 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2164", "Max" : "2164"}
	, {"Name" : "Interval", "Min" : "2164", "Max" : "2164"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	alpha { ap_fifo {  { alpha_dout fifo_port_we 0 64 }  { alpha_num_data_valid fifo_status_num_data_valid 0 4 }  { alpha_fifo_cap fifo_update 0 4 }  { alpha_empty_n fifo_status 0 1 }  { alpha_read fifo_data 1 1 } } }
	SxxStream { ap_fifo {  { SxxStream_dout fifo_port_we 0 256 }  { SxxStream_num_data_valid fifo_status_num_data_valid 0 5 }  { SxxStream_fifo_cap fifo_update 0 5 }  { SxxStream_empty_n fifo_status 0 1 }  { SxxStream_read fifo_data 1 1 } } }
	SyyStream { ap_fifo {  { SyyStream_dout fifo_port_we 0 256 }  { SyyStream_num_data_valid fifo_status_num_data_valid 0 5 }  { SyyStream_fifo_cap fifo_update 0 5 }  { SyyStream_empty_n fifo_status 0 1 }  { SyyStream_read fifo_data 1 1 } } }
	SxyStream { ap_fifo {  { SxyStream_dout fifo_port_we 0 256 }  { SxyStream_num_data_valid fifo_status_num_data_valid 0 5 }  { SxyStream_fifo_cap fifo_update 0 5 }  { SxyStream_empty_n fifo_status 0 1 }  { SxyStream_read fifo_data 1 1 } } }
	RStream { ap_fifo {  { RStream_din fifo_port_we 1 256 }  { RStream_num_data_valid fifo_status_num_data_valid 0 5 }  { RStream_fifo_cap fifo_update 0 5 }  { RStream_full_n fifo_status 0 1 }  { RStream_write fifo_data 1 1 } } }
}
