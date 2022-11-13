set moduleName harris
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {harris}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgSrc int 256 regular {array 2048 { 1 3 } 1 1 }  }
	{ imgDst int 256 regular {array 2048 { 0 3 } 0 1 }  }
	{ alpha double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgSrc", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "imgDst", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ imgSrc_address0 sc_out sc_lv 11 signal 0 } 
	{ imgSrc_ce0 sc_out sc_logic 1 signal 0 } 
	{ imgSrc_d0 sc_out sc_lv 256 signal 0 } 
	{ imgSrc_q0 sc_in sc_lv 256 signal 0 } 
	{ imgSrc_we0 sc_out sc_logic 1 signal 0 } 
	{ imgSrc_address1 sc_out sc_lv 11 signal 0 } 
	{ imgSrc_ce1 sc_out sc_logic 1 signal 0 } 
	{ imgSrc_d1 sc_out sc_lv 256 signal 0 } 
	{ imgSrc_q1 sc_in sc_lv 256 signal 0 } 
	{ imgSrc_we1 sc_out sc_logic 1 signal 0 } 
	{ imgDst_address0 sc_out sc_lv 11 signal 1 } 
	{ imgDst_ce0 sc_out sc_logic 1 signal 1 } 
	{ imgDst_d0 sc_out sc_lv 256 signal 1 } 
	{ imgDst_q0 sc_in sc_lv 256 signal 1 } 
	{ imgDst_we0 sc_out sc_logic 1 signal 1 } 
	{ imgDst_address1 sc_out sc_lv 11 signal 1 } 
	{ imgDst_ce1 sc_out sc_logic 1 signal 1 } 
	{ imgDst_d1 sc_out sc_lv 256 signal 1 } 
	{ imgDst_q1 sc_in sc_lv 256 signal 1 } 
	{ imgDst_we1 sc_out sc_logic 1 signal 1 } 
	{ alpha sc_in sc_lv 64 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "imgSrc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgSrc", "role": "address0" }} , 
 	{ "name": "imgSrc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgSrc", "role": "ce0" }} , 
 	{ "name": "imgSrc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgSrc", "role": "d0" }} , 
 	{ "name": "imgSrc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgSrc", "role": "q0" }} , 
 	{ "name": "imgSrc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgSrc", "role": "we0" }} , 
 	{ "name": "imgSrc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgSrc", "role": "address1" }} , 
 	{ "name": "imgSrc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgSrc", "role": "ce1" }} , 
 	{ "name": "imgSrc_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgSrc", "role": "d1" }} , 
 	{ "name": "imgSrc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgSrc", "role": "q1" }} , 
 	{ "name": "imgSrc_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgSrc", "role": "we1" }} , 
 	{ "name": "imgDst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgDst", "role": "address0" }} , 
 	{ "name": "imgDst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgDst", "role": "ce0" }} , 
 	{ "name": "imgDst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgDst", "role": "d0" }} , 
 	{ "name": "imgDst_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgDst", "role": "q0" }} , 
 	{ "name": "imgDst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgDst", "role": "we0" }} , 
 	{ "name": "imgDst_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "imgDst", "role": "address1" }} , 
 	{ "name": "imgDst_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgDst", "role": "ce1" }} , 
 	{ "name": "imgDst_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgDst", "role": "d1" }} , 
 	{ "name": "imgDst_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "imgDst", "role": "q1" }} , 
 	{ "name": "imgDst_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgDst", "role": "we1" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "31", "41", "77", "83", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99"],
		"CDFG" : "harris",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2240", "EstimateLatencyMax" : "2240",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "read_input_U0"}],
		"OutputProcess" : [
			{"ID" : "83", "Name" : "write_result_U0"}],
		"Port" : [
			{"Name" : "imgSrc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "imgSrc"}]},
			{"Name" : "imgDst", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "write_result_U0", "Port" : "imgDst"}]},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_input_U0", "Port" : "inStream"},
					{"ID" : "4", "SubInstance" : "sobel_U0", "Port" : "inStream"}]},
			{"Name" : "GxxStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "filter_U0", "Port" : "GxxStream"},
					{"ID" : "4", "SubInstance" : "sobel_U0", "Port" : "GxxStream"}]},
			{"Name" : "GyyStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "filter_U0", "Port" : "GyyStream"},
					{"ID" : "4", "SubInstance" : "sobel_U0", "Port" : "GyyStream"}]},
			{"Name" : "GxyStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "filter_U0", "Port" : "GxyStream"},
					{"ID" : "4", "SubInstance" : "sobel_U0", "Port" : "GxyStream"}]},
			{"Name" : "SxxStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "filter_U0", "Port" : "SxxStream"},
					{"ID" : "41", "SubInstance" : "response_U0", "Port" : "SxxStream"}]},
			{"Name" : "SyyStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "filter_U0", "Port" : "SyyStream"},
					{"ID" : "41", "SubInstance" : "response_U0", "Port" : "SyyStream"}]},
			{"Name" : "SxyStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "filter_U0", "Port" : "SxyStream"},
					{"ID" : "41", "SubInstance" : "response_U0", "Port" : "SxyStream"}]},
			{"Name" : "RStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "findCorner_U0", "Port" : "RStream"},
					{"ID" : "41", "SubInstance" : "response_U0", "Port" : "RStream"}]},
			{"Name" : "outStream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "findCorner_U0", "Port" : "outStream"},
					{"ID" : "83", "SubInstance" : "write_result_U0", "Port" : "outStream"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "alpha_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "85", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "alpha_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_input_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "read_input",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2051", "EstimateLatencyMax" : "2051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgSrc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "86", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "mem_rd", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_input_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_U0", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "sobel",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2060", "EstimateLatencyMax" : "2060",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_sobel_U0_U",
		"Port" : [
			{"Name" : "GxxStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31","32"], "DependentChan" : "87", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "GxxStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "GyyStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31","35"], "DependentChan" : "88", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "GyyStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "GxyStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31","38"], "DependentChan" : "89", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "GxyStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "86", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_164_1_VITIS_LOOP_165_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.rowBuffer_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U5", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U6", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U7", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U8", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U9", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U10", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U11", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U12", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U13", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U14", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U15", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U16", "Parent" : "4"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U17", "Parent" : "4"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U18", "Parent" : "4"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U19", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U20", "Parent" : "4"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U21", "Parent" : "4"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U22", "Parent" : "4"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U23", "Parent" : "4"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U24", "Parent" : "4"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U25", "Parent" : "4"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U26", "Parent" : "4"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U27", "Parent" : "4"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.mul_32s_32s_32_5_1_U28", "Parent" : "4"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_U0.flow_control_loop_pipe_U", "Parent" : "4"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_U0", "Parent" : "0", "Child" : ["32", "35", "38"],
		"CDFG" : "filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2188", "EstimateLatencyMax" : "2188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_filter_U0_U",
		"InputProcess" : [
			{"ID" : "32", "Name" : "filterSingle_U0"},
			{"ID" : "35", "Name" : "filterSingle_1_U0"},
			{"ID" : "38", "Name" : "filterSingle_2_U0"}],
		"OutputProcess" : [
			{"ID" : "32", "Name" : "filterSingle_U0"},
			{"ID" : "35", "Name" : "filterSingle_1_U0"},
			{"ID" : "38", "Name" : "filterSingle_2_U0"}],
		"Port" : [
			{"Name" : "GxxStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "87", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "filterSingle_U0", "Port" : "GxxStream"}]},
			{"Name" : "SxxStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "90", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "filterSingle_U0", "Port" : "SxxStream"}]},
			{"Name" : "GyyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "88", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "filterSingle_1_U0", "Port" : "GyyStream"}]},
			{"Name" : "SyyStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "91", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "filterSingle_1_U0", "Port" : "SyyStream"}]},
			{"Name" : "GxyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "89", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "filterSingle_2_U0", "Port" : "GxyStream"}]},
			{"Name" : "SxyStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "92", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "filterSingle_2_U0", "Port" : "SxyStream"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_U0", "Parent" : "31", "Child" : ["33", "34"],
		"CDFG" : "filterSingle",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2188", "EstimateLatencyMax" : "2188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "GxxStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "87", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "GxxStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxxStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "90", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxxStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_241_1_VITIS_LOOP_242_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_U0.rowBuffer_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_U0.flow_control_loop_pipe_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_1_U0", "Parent" : "31", "Child" : ["36", "37"],
		"CDFG" : "filterSingle_1",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2188", "EstimateLatencyMax" : "2188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "GyyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "88", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "GyyStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SyyStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "91", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SyyStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_241_1_VITIS_LOOP_242_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_1_U0.rowBuffer_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_1_U0.flow_control_loop_pipe_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_2_U0", "Parent" : "31", "Child" : ["39", "40"],
		"CDFG" : "filterSingle_2",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2188", "EstimateLatencyMax" : "2188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "GxyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "89", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "GxyStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxyStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "92", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxyStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_241_1_VITIS_LOOP_242_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_2_U0.rowBuffer_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.filter_U0.filterSingle_2_U0.flow_control_loop_pipe_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.response_U0", "Parent" : "0", "Child" : ["42", "76"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_response_U0_U",
		"Port" : [
			{"Name" : "alpha", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "85", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "alpha_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxxStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31","32"], "DependentChan" : "90", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "SxxStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "SyyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31","35"], "DependentChan" : "91", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "SyyStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "SxyStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31","38"], "DependentChan" : "92", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "SxyStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "RStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["77"], "DependentChan" : "93", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Port" : "RStream", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76", "Parent" : "41", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75"],
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U47", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U48", "Parent" : "42"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U49", "Parent" : "42"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U50", "Parent" : "42"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U51", "Parent" : "42"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U52", "Parent" : "42"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U53", "Parent" : "42"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U54", "Parent" : "42"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U55", "Parent" : "42"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U56", "Parent" : "42"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U57", "Parent" : "42"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U58", "Parent" : "42"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U59", "Parent" : "42"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U60", "Parent" : "42"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U61", "Parent" : "42"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U62", "Parent" : "42"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U63", "Parent" : "42"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U64", "Parent" : "42"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U65", "Parent" : "42"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U66", "Parent" : "42"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U67", "Parent" : "42"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U68", "Parent" : "42"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U69", "Parent" : "42"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_32s_32_5_1_U70", "Parent" : "42"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U71", "Parent" : "42"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U72", "Parent" : "42"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U73", "Parent" : "42"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U74", "Parent" : "42"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U75", "Parent" : "42"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U76", "Parent" : "42"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U77", "Parent" : "42"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.mul_32s_21ns_52_5_1_U78", "Parent" : "42"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.response_U0.grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.response_U0.ashr_54ns_32ns_54_2_1_U85", "Parent" : "41"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.findCorner_U0", "Parent" : "0", "Child" : ["78", "81"],
		"CDFG" : "findCorner",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2204", "EstimateLatencyMax" : "2204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "41",
		"StartFifo" : "start_for_findCorner_U0_U",
		"Port" : [
			{"Name" : "RStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "93", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2_fu_22", "Port" : "RStream", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "outStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["83"], "DependentChan" : "94", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2_fu_22", "Port" : "outStream", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "81", "SubInstance" : "grp_findCorner_Pipeline_VITIS_LOOP_452_9_fu_30", "Port" : "outStream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findCorner_U0.grp_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2_fu_22", "Parent" : "77", "Child" : ["79", "80"],
		"CDFG" : "findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2182", "EstimateLatencyMax" : "2182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "RStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "RStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_375_1_VITIS_LOOP_376_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.findCorner_U0.grp_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2_fu_22.rowBuffer_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.findCorner_U0.grp_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2_fu_22.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findCorner_U0.grp_findCorner_Pipeline_VITIS_LOOP_452_9_fu_30", "Parent" : "77", "Child" : ["82"],
		"CDFG" : "findCorner_Pipeline_VITIS_LOOP_452_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_452_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.findCorner_U0.grp_findCorner_Pipeline_VITIS_LOOP_452_9_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_result_U0", "Parent" : "0", "Child" : ["84"],
		"CDFG" : "write_result",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2051", "EstimateLatencyMax" : "2051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "77",
		"StartFifo" : "start_for_write_result_U0_U",
		"Port" : [
			{"Name" : "imgDst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["77"], "DependentChan" : "94", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "outStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "mem_wr", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_result_U0.flow_control_loop_pipe_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alpha_c_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inStream_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GxxStream_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GyyStream_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GxyStream_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SxxStream_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SyyStream_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SxyStream_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RStream_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outStream_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_response_U0_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sobel_U0_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_filter_U0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_findCorner_U0_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_result_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	harris {
		imgSrc {Type I LastRead 0 FirstWrite -1}
		imgDst {Type O LastRead -1 FirstWrite 2}
		alpha {Type I LastRead 5 FirstWrite -1}
		inStream {Type IO LastRead -1 FirstWrite -1}
		GxxStream {Type IO LastRead -1 FirstWrite -1}
		GyyStream {Type IO LastRead -1 FirstWrite -1}
		GxyStream {Type IO LastRead -1 FirstWrite -1}
		SxxStream {Type IO LastRead -1 FirstWrite -1}
		SyyStream {Type IO LastRead -1 FirstWrite -1}
		SxyStream {Type IO LastRead -1 FirstWrite -1}
		RStream {Type IO LastRead -1 FirstWrite -1}
		outStream {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		alpha {Type I LastRead 0 FirstWrite -1}
		alpha_c {Type O LastRead -1 FirstWrite 0}}
	read_input {
		imgSrc {Type I LastRead 0 FirstWrite -1}
		inStream {Type O LastRead -1 FirstWrite 2}}
	sobel {
		GxxStream {Type O LastRead -1 FirstWrite 11}
		GyyStream {Type O LastRead -1 FirstWrite 11}
		GxyStream {Type O LastRead -1 FirstWrite 11}
		inStream {Type I LastRead 2 FirstWrite -1}}
	filter {
		GxxStream {Type I LastRead 2 FirstWrite -1}
		SxxStream {Type O LastRead -1 FirstWrite 11}
		GyyStream {Type I LastRead 2 FirstWrite -1}
		SyyStream {Type O LastRead -1 FirstWrite 11}
		GxyStream {Type I LastRead 2 FirstWrite -1}
		SxyStream {Type O LastRead -1 FirstWrite 11}}
	filterSingle {
		GxxStream {Type I LastRead 2 FirstWrite -1}
		SxxStream {Type O LastRead -1 FirstWrite 11}}
	filterSingle_1 {
		GyyStream {Type I LastRead 2 FirstWrite -1}
		SyyStream {Type O LastRead -1 FirstWrite 11}}
	filterSingle_2 {
		GxyStream {Type I LastRead 2 FirstWrite -1}
		SxyStream {Type O LastRead -1 FirstWrite 11}}
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
		RStream {Type O LastRead -1 FirstWrite 15}}
	findCorner {
		RStream {Type I LastRead 2 FirstWrite -1}
		outStream {Type O LastRead -1 FirstWrite 1}}
	findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2 {
		RStream {Type I LastRead 2 FirstWrite -1}
		outStream {Type O LastRead -1 FirstWrite 5}}
	findCorner_Pipeline_VITIS_LOOP_452_9 {
		outStream {Type O LastRead -1 FirstWrite 1}}
	write_result {
		imgDst {Type O LastRead -1 FirstWrite 2}
		outStream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2240", "Max" : "2240"}
	, {"Name" : "Interval", "Min" : "2205", "Max" : "2205"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgSrc { ap_memory {  { imgSrc_address0 mem_address 1 11 }  { imgSrc_ce0 mem_ce 1 1 }  { imgSrc_d0 mem_din 1 256 }  { imgSrc_q0 mem_dout 0 256 }  { imgSrc_we0 mem_we 1 1 }  { imgSrc_address1 mem_address 1 11 }  { imgSrc_ce1 mem_ce 1 1 }  { imgSrc_d1 mem_din 1 256 }  { imgSrc_q1 mem_dout 0 256 }  { imgSrc_we1 mem_we 1 1 } } }
	imgDst { ap_memory {  { imgDst_address0 mem_address 1 11 }  { imgDst_ce0 mem_ce 1 1 }  { imgDst_d0 mem_din 1 256 }  { imgDst_q0 mem_dout 0 256 }  { imgDst_we0 mem_we 1 1 }  { imgDst_address1 mem_address 1 11 }  { imgDst_ce1 mem_ce 1 1 }  { imgDst_d1 mem_din 1 256 }  { imgDst_q1 mem_dout 0 256 }  { imgDst_we1 mem_we 1 1 } } }
	alpha { ap_none {  { alpha in_data 0 64 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
