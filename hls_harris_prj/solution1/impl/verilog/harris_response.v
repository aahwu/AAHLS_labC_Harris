// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module harris_response (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        alpha_dout,
        alpha_num_data_valid,
        alpha_fifo_cap,
        alpha_empty_n,
        alpha_read,
        SxxStream_dout,
        SxxStream_num_data_valid,
        SxxStream_fifo_cap,
        SxxStream_empty_n,
        SxxStream_read,
        SyyStream_dout,
        SyyStream_num_data_valid,
        SyyStream_fifo_cap,
        SyyStream_empty_n,
        SyyStream_read,
        SxyStream_dout,
        SxyStream_num_data_valid,
        SxyStream_fifo_cap,
        SxyStream_empty_n,
        SxyStream_read,
        RStream_din,
        RStream_num_data_valid,
        RStream_fifo_cap,
        RStream_full_n,
        RStream_write
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [63:0] alpha_dout;
input  [3:0] alpha_num_data_valid;
input  [3:0] alpha_fifo_cap;
input   alpha_empty_n;
output   alpha_read;
input  [255:0] SxxStream_dout;
input  [4:0] SxxStream_num_data_valid;
input  [4:0] SxxStream_fifo_cap;
input   SxxStream_empty_n;
output   SxxStream_read;
input  [255:0] SyyStream_dout;
input  [4:0] SyyStream_num_data_valid;
input  [4:0] SyyStream_fifo_cap;
input   SyyStream_empty_n;
output   SyyStream_read;
input  [255:0] SxyStream_dout;
input  [4:0] SxyStream_num_data_valid;
input  [4:0] SxyStream_fifo_cap;
input   SxyStream_empty_n;
output   SxyStream_read;
output  [255:0] RStream_din;
input  [4:0] RStream_num_data_valid;
input  [4:0] RStream_fifo_cap;
input   RStream_full_n;
output   RStream_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg alpha_read;
reg SxxStream_read;
reg SyyStream_read;
reg SxyStream_read;
reg RStream_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    alpha_blk_n;
reg   [63:0] alpha_read_reg_279;
wire   [63:0] ireg_fu_89_p1;
reg   [63:0] ireg_reg_284;
wire    ap_CS_fsm_state2;
reg   [0:0] tmp_reg_289;
wire   [51:0] trunc_ln600_fu_118_p1;
reg   [51:0] trunc_ln600_reg_294;
wire   [0:0] cmp_i_i_fu_122_p2;
reg   [0:0] cmp_i_i_reg_299;
wire   [11:0] sub_i_i_fu_128_p2;
reg   [11:0] sub_i_i_reg_305;
wire   [0:0] cmp29_i_i_fu_134_p2;
reg   [0:0] cmp29_i_i_reg_312;
wire   [53:0] man_V_2_fu_157_p3;
reg   [53:0] man_V_2_reg_318;
wire    ap_CS_fsm_state3;
wire  signed [11:0] cond_i_i_fu_174_p3;
reg  signed [11:0] cond_i_i_reg_323;
wire   [0:0] cmp32_i_i_fu_181_p2;
reg   [0:0] cmp32_i_i_reg_329;
wire   [20:0] empty_37_fu_186_p1;
reg   [20:0] empty_37_reg_334;
wire   [0:0] cmp54_i_i_fu_190_p2;
reg   [0:0] cmp54_i_i_reg_340;
wire   [0:0] cmp40_i_i_fu_199_p2;
reg   [0:0] cmp40_i_i_reg_345;
wire    ap_CS_fsm_state4;
wire   [20:0] ref_tmp61_1_i_fu_222_p3;
reg   [20:0] ref_tmp61_1_i_reg_355;
wire   [53:0] grp_fu_208_p2;
reg   [53:0] shr_i_i_reg_360;
wire    ap_CS_fsm_state5;
wire   [20:0] r_V_fu_270_p3;
reg   [20:0] r_V_reg_365;
wire    ap_CS_fsm_state6;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_idle;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_ready;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxxStream_read;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SyyStream_read;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxyStream_read;
wire   [255:0] grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_din;
wire    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_write;
reg    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    ap_block_state1;
wire   [10:0] exp_tmp3_fu_104_p4;
wire   [62:0] empty_fu_92_p1;
wire   [11:0] conv3_i_i_i36_i_i_fu_114_p1;
wire   [52:0] zext_ln604_cast_fu_140_p3;
wire   [53:0] zext_ln604_fu_147_p1;
wire   [53:0] man_V_1_fu_151_p2;
wire   [11:0] sub30_i_i_fu_164_p2;
wire   [11:0] sub31_i_i_fu_169_p2;
wire  signed [31:0] cond_i_cast_i_fu_196_p1;
wire   [53:0] grp_fu_208_p1;
wire   [20:0] cond_i_cast_icast_fu_213_p1;
wire   [20:0] shl_i_i_fu_217_p2;
wire   [0:0] tmp_12_fu_232_p3;
wire   [20:0] empty_38_fu_229_p1;
wire   [20:0] p_cast_cast_i_fu_239_p3;
wire   [20:0] ref_tmp61_0_i_fu_247_p3;
wire   [0:0] brmerge_i_fu_254_p2;
wire   [20:0] p_mux_i_fu_258_p3;
wire   [20:0] spec_select_i_fu_264_p3;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg = 1'b0;
end

harris_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2 grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start),
    .ap_done(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done),
    .ap_idle(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_idle),
    .ap_ready(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_ready),
    .SxxStream_dout(SxxStream_dout),
    .SxxStream_num_data_valid(5'd0),
    .SxxStream_fifo_cap(5'd0),
    .SxxStream_empty_n(SxxStream_empty_n),
    .SxxStream_read(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxxStream_read),
    .SyyStream_dout(SyyStream_dout),
    .SyyStream_num_data_valid(5'd0),
    .SyyStream_fifo_cap(5'd0),
    .SyyStream_empty_n(SyyStream_empty_n),
    .SyyStream_read(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SyyStream_read),
    .SxyStream_dout(SxyStream_dout),
    .SxyStream_num_data_valid(5'd0),
    .SxyStream_fifo_cap(5'd0),
    .SxyStream_empty_n(SxyStream_empty_n),
    .SxyStream_read(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxyStream_read),
    .RStream_din(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_din),
    .RStream_num_data_valid(5'd0),
    .RStream_fifo_cap(5'd0),
    .RStream_full_n(RStream_full_n),
    .RStream_write(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_write),
    .zext_ln325(r_V_reg_365)
);

harris_ashr_54ns_32ns_54_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 2 ),
    .din0_WIDTH( 54 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 54 ))
ashr_54ns_32ns_54_2_1_U85(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(man_V_2_reg_318),
    .din1(grp_fu_208_p1),
    .ce(1'b1),
    .dout(grp_fu_208_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg <= 1'b1;
        end else if ((grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_ready == 1'b1)) begin
            grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        alpha_read_reg_279 <= alpha_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp29_i_i_reg_312 <= cmp29_i_i_fu_134_p2;
        cmp_i_i_reg_299 <= cmp_i_i_fu_122_p2;
        ireg_reg_284 <= ireg_fu_89_p1;
        sub_i_i_reg_305 <= sub_i_i_fu_128_p2;
        tmp_reg_289 <= ireg_fu_89_p1[32'd63];
        trunc_ln600_reg_294 <= trunc_ln600_fu_118_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp32_i_i_reg_329 <= cmp32_i_i_fu_181_p2;
        cond_i_i_reg_323 <= cond_i_i_fu_174_p3;
        empty_37_reg_334 <= empty_37_fu_186_p1;
        man_V_2_reg_318 <= man_V_2_fu_157_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp29_i_i_reg_312 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        cmp40_i_i_reg_345 <= cmp40_i_i_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp29_i_i_reg_312 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        cmp54_i_i_reg_340 <= cmp54_i_i_fu_190_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_V_reg_365 <= r_V_fu_270_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp29_i_i_reg_312 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ref_tmp61_1_i_reg_355 <= ref_tmp61_1_i_fu_222_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp29_i_i_reg_312 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        shr_i_i_reg_360 <= grp_fu_208_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        RStream_write = grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_write;
    end else begin
        RStream_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        SxxStream_read = grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxxStream_read;
    end else begin
        SxxStream_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        SxyStream_read = grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxyStream_read;
    end else begin
        SxyStream_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        SyyStream_read = grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SyyStream_read;
    end else begin
        SyyStream_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        alpha_blk_n = alpha_empty_n;
    end else begin
        alpha_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == alpha_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        alpha_read = 1'b1;
    end else begin
        alpha_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == alpha_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((1'b0 == alpha_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign RStream_din = grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_din;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((1'b0 == alpha_empty_n) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign brmerge_i_fu_254_p2 = (cmp_i_i_reg_299 | cmp32_i_i_reg_329);

assign cmp29_i_i_fu_134_p2 = (($signed(sub_i_i_fu_128_p2) > $signed(12'd20)) ? 1'b1 : 1'b0);

assign cmp32_i_i_fu_181_p2 = ((sub_i_i_reg_305 == 12'd20) ? 1'b1 : 1'b0);

assign cmp40_i_i_fu_199_p2 = ((cond_i_i_reg_323 < 12'd54) ? 1'b1 : 1'b0);

assign cmp54_i_i_fu_190_p2 = ((cond_i_i_fu_174_p3 < 12'd21) ? 1'b1 : 1'b0);

assign cmp_i_i_fu_122_p2 = ((empty_fu_92_p1 == 63'd0) ? 1'b1 : 1'b0);

assign cond_i_cast_i_fu_196_p1 = cond_i_i_reg_323;

assign cond_i_cast_icast_fu_213_p1 = cond_i_cast_i_fu_196_p1[20:0];

assign cond_i_i_fu_174_p3 = ((cmp29_i_i_reg_312[0:0] == 1'b1) ? sub30_i_i_fu_164_p2 : sub31_i_i_fu_169_p2);

assign conv3_i_i_i36_i_i_fu_114_p1 = exp_tmp3_fu_104_p4;

assign empty_37_fu_186_p1 = man_V_2_fu_157_p3[20:0];

assign empty_38_fu_229_p1 = shr_i_i_reg_360[20:0];

assign empty_fu_92_p1 = ireg_fu_89_p1[62:0];

assign exp_tmp3_fu_104_p4 = {{ireg_fu_89_p1[62:52]}};

assign grp_fu_208_p1 = $unsigned(cond_i_cast_i_fu_196_p1);

assign grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start = grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg;

assign ireg_fu_89_p1 = alpha_read_reg_279;

assign man_V_1_fu_151_p2 = (54'd0 - zext_ln604_fu_147_p1);

assign man_V_2_fu_157_p3 = ((tmp_reg_289[0:0] == 1'b1) ? man_V_1_fu_151_p2 : zext_ln604_fu_147_p1);

assign p_cast_cast_i_fu_239_p3 = ((tmp_12_fu_232_p3[0:0] == 1'b1) ? 21'd2097151 : 21'd0);

assign p_mux_i_fu_258_p3 = ((cmp_i_i_reg_299[0:0] == 1'b1) ? 21'd0 : empty_37_reg_334);

assign r_V_fu_270_p3 = ((brmerge_i_fu_254_p2[0:0] == 1'b1) ? p_mux_i_fu_258_p3 : spec_select_i_fu_264_p3);

assign ref_tmp61_0_i_fu_247_p3 = ((cmp40_i_i_reg_345[0:0] == 1'b1) ? empty_38_fu_229_p1 : p_cast_cast_i_fu_239_p3);

assign ref_tmp61_1_i_fu_222_p3 = ((cmp54_i_i_reg_340[0:0] == 1'b1) ? shl_i_i_fu_217_p2 : 21'd0);

assign shl_i_i_fu_217_p2 = empty_37_reg_334 << cond_i_cast_icast_fu_213_p1;

assign spec_select_i_fu_264_p3 = ((cmp29_i_i_reg_312[0:0] == 1'b1) ? ref_tmp61_0_i_fu_247_p3 : ref_tmp61_1_i_reg_355);

assign start_out = real_start;

assign sub30_i_i_fu_164_p2 = ($signed(sub_i_i_reg_305) + $signed(12'd4076));

assign sub31_i_i_fu_169_p2 = (12'd20 - sub_i_i_reg_305);

assign sub_i_i_fu_128_p2 = (12'd1075 - conv3_i_i_i36_i_i_fu_114_p1);

assign tmp_12_fu_232_p3 = ireg_reg_284[32'd63];

assign trunc_ln600_fu_118_p1 = ireg_fu_89_p1[51:0];

assign zext_ln604_cast_fu_140_p3 = {{1'd1}, {trunc_ln600_reg_294}};

assign zext_ln604_fu_147_p1 = zext_ln604_cast_fu_140_p3;

endmodule //harris_response
