# This script segment is generated automatically by AutoPilot

set id 85
set name harris_ashr_54ns_32ns_54_2_1
set corename simcore_ashr
set op ashr
set stage_num 2
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 54
set in0_signed 0
set in1_width 54
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 54
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {ashr} IMPL {auto_pipe} LATENCY 1 ALLOW_PRAGMA 1
}


set op ashr
set corename Shifter
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeshift] == "::AESL_LIB_VIRTEX::xil_gen_pipeshift"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeshift { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeshift, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name alpha \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_alpha \
    op interface \
    ports { alpha_dout { I 64 vector } alpha_num_data_valid { I 4 vector } alpha_fifo_cap { I 4 vector } alpha_empty_n { I 1 bit } alpha_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name SxxStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SxxStream \
    op interface \
    ports { SxxStream_dout { I 256 vector } SxxStream_num_data_valid { I 5 vector } SxxStream_fifo_cap { I 5 vector } SxxStream_empty_n { I 1 bit } SxxStream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name SyyStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SyyStream \
    op interface \
    ports { SyyStream_dout { I 256 vector } SyyStream_num_data_valid { I 5 vector } SyyStream_fifo_cap { I 5 vector } SyyStream_empty_n { I 1 bit } SyyStream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name SxyStream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SxyStream \
    op interface \
    ports { SxyStream_dout { I 256 vector } SxyStream_num_data_valid { I 5 vector } SxyStream_fifo_cap { I 5 vector } SxyStream_empty_n { I 1 bit } SxyStream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name RStream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_RStream \
    op interface \
    ports { RStream_din { O 256 vector } RStream_num_data_valid { I 5 vector } RStream_fifo_cap { I 5 vector } RStream_full_n { I 1 bit } RStream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


