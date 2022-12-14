#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("imgSrc_address0", 11, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("imgSrc_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("imgSrc_d0", 256, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("imgSrc_q0", 256, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("imgSrc_we0", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("imgSrc_address1", 11, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("imgSrc_ce1", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("imgSrc_d1", 256, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("imgSrc_q1", 256, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("imgSrc_we1", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("imgDst_address0", 11, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("imgDst_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("imgDst_d0", 256, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("imgDst_q0", 256, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("imgDst_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("imgDst_address1", 11, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("imgDst_ce1", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("imgDst_d1", 256, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("imgDst_q1", 256, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("imgDst_we1", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("alpha", 64, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_continue", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "harris";
