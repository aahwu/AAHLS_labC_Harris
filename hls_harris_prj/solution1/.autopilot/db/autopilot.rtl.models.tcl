set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME harris_entry_proc}
  {SRCNAME read_input MODELNAME read_input RTLNAME harris_read_input
    SUBMODULES {
      {MODELNAME harris_flow_control_loop_pipe RTLNAME harris_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME harris_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME sobel MODELNAME sobel RTLNAME harris_sobel
    SUBMODULES {
      {MODELNAME harris_mul_32s_32s_32_5_1 RTLNAME harris_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME harris_sobel_rowBuffer_RAM_AUTO_1R1W RTLNAME harris_sobel_rowBuffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME filterSingle MODELNAME filterSingle RTLNAME harris_filterSingle}
  {SRCNAME filterSingle.1 MODELNAME filterSingle_1 RTLNAME harris_filterSingle_1}
  {SRCNAME filterSingle.2 MODELNAME filterSingle_2 RTLNAME harris_filterSingle_2}
  {SRCNAME filter MODELNAME filter RTLNAME harris_filter}
  {SRCNAME response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2 MODELNAME response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2 RTLNAME harris_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2
    SUBMODULES {
      {MODELNAME harris_mul_32s_21ns_52_5_1 RTLNAME harris_mul_32s_21ns_52_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME harris_flow_control_loop_pipe_sequential_init RTLNAME harris_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME harris_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME response MODELNAME response RTLNAME harris_response
    SUBMODULES {
      {MODELNAME harris_ashr_54ns_32ns_54_2_1 RTLNAME harris_ashr_54ns_32ns_54_2_1 BINDTYPE op TYPE ashr IMPL auto_pipe LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2 MODELNAME findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2 RTLNAME harris_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2
    SUBMODULES {
      {MODELNAME harris_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2_rowBuffer_RAM_AUTO_1R1W RTLNAME harris_findCorner_Pipeline_VITIS_LOOP_375_1_VITIS_LOOP_376_2_rowBuffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME findCorner_Pipeline_VITIS_LOOP_452_9 MODELNAME findCorner_Pipeline_VITIS_LOOP_452_9 RTLNAME harris_findCorner_Pipeline_VITIS_LOOP_452_9}
  {SRCNAME findCorner MODELNAME findCorner RTLNAME harris_findCorner}
  {SRCNAME write_result MODELNAME write_result RTLNAME harris_write_result}
  {SRCNAME harris MODELNAME harris RTLNAME harris IS_TOP 1
    SUBMODULES {
      {MODELNAME harris_fifo_w64_d5_S RTLNAME harris_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME harris_fifo_w256_d16_A RTLNAME harris_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME harris_start_for_response_U0 RTLNAME harris_start_for_response_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME harris_start_for_sobel_U0 RTLNAME harris_start_for_sobel_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME harris_start_for_filter_U0 RTLNAME harris_start_for_filter_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME harris_start_for_findCorner_U0 RTLNAME harris_start_for_findCorner_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME harris_start_for_write_result_U0 RTLNAME harris_start_for_write_result_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
