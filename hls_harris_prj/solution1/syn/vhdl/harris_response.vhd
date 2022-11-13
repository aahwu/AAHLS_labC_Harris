-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity harris_response is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    alpha_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    alpha_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    alpha_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    alpha_empty_n : IN STD_LOGIC;
    alpha_read : OUT STD_LOGIC;
    SxxStream_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    SxxStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    SxxStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    SxxStream_empty_n : IN STD_LOGIC;
    SxxStream_read : OUT STD_LOGIC;
    SyyStream_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    SyyStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    SyyStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    SyyStream_empty_n : IN STD_LOGIC;
    SyyStream_read : OUT STD_LOGIC;
    SxyStream_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    SxyStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    SxyStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    SxyStream_empty_n : IN STD_LOGIC;
    SxyStream_read : OUT STD_LOGIC;
    RStream_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    RStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    RStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    RStream_full_n : IN STD_LOGIC;
    RStream_write : OUT STD_LOGIC );
end;


architecture behav of harris_response is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv63_0 : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv12_433 : STD_LOGIC_VECTOR (11 downto 0) := "010000110011";
    constant ap_const_lv12_14 : STD_LOGIC_VECTOR (11 downto 0) := "000000010100";
    constant ap_const_lv54_0 : STD_LOGIC_VECTOR (53 downto 0) := "000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv12_FEC : STD_LOGIC_VECTOR (11 downto 0) := "111111101100";
    constant ap_const_lv12_15 : STD_LOGIC_VECTOR (11 downto 0) := "000000010101";
    constant ap_const_lv12_36 : STD_LOGIC_VECTOR (11 downto 0) := "000000110110";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv21_1FFFFF : STD_LOGIC_VECTOR (20 downto 0) := "111111111111111111111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal alpha_blk_n : STD_LOGIC;
    signal alpha_read_reg_279 : STD_LOGIC_VECTOR (63 downto 0);
    signal ireg_fu_89_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ireg_reg_284 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_reg_289 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln600_fu_118_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal trunc_ln600_reg_294 : STD_LOGIC_VECTOR (51 downto 0);
    signal cmp_i_i_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp_i_i_reg_299 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_i_i_fu_128_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_i_i_reg_305 : STD_LOGIC_VECTOR (11 downto 0);
    signal cmp29_i_i_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp29_i_i_reg_312 : STD_LOGIC_VECTOR (0 downto 0);
    signal man_V_2_fu_157_p3 : STD_LOGIC_VECTOR (53 downto 0);
    signal man_V_2_reg_318 : STD_LOGIC_VECTOR (53 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal cond_i_i_fu_174_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal cond_i_i_reg_323 : STD_LOGIC_VECTOR (11 downto 0);
    signal cmp32_i_i_fu_181_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp32_i_i_reg_329 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_37_fu_186_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal empty_37_reg_334 : STD_LOGIC_VECTOR (20 downto 0);
    signal cmp54_i_i_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp54_i_i_reg_340 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp40_i_i_fu_199_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp40_i_i_reg_345 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ref_tmp61_1_i_fu_222_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal ref_tmp61_1_i_reg_355 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_208_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal shr_i_i_reg_360 : STD_LOGIC_VECTOR (53 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal r_V_fu_270_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal r_V_reg_365 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_idle : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_ready : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxxStream_read : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SyyStream_read : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxyStream_read : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_din : STD_LOGIC_VECTOR (255 downto 0);
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_write : STD_LOGIC;
    signal grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal exp_tmp3_fu_104_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal empty_fu_92_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal conv3_i_i_i36_i_i_fu_114_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln604_cast_fu_140_p3 : STD_LOGIC_VECTOR (52 downto 0);
    signal zext_ln604_fu_147_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal man_V_1_fu_151_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal sub30_i_i_fu_164_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub31_i_i_fu_169_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal cond_i_cast_i_fu_196_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_208_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal cond_i_cast_icast_fu_213_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal shl_i_i_fu_217_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal tmp_12_fu_232_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_38_fu_229_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal p_cast_cast_i_fu_239_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal ref_tmp61_0_i_fu_247_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal brmerge_i_fu_254_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_mux_i_fu_258_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal spec_select_i_fu_264_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component harris_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        SxxStream_dout : IN STD_LOGIC_VECTOR (255 downto 0);
        SxxStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        SxxStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        SxxStream_empty_n : IN STD_LOGIC;
        SxxStream_read : OUT STD_LOGIC;
        SyyStream_dout : IN STD_LOGIC_VECTOR (255 downto 0);
        SyyStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        SyyStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        SyyStream_empty_n : IN STD_LOGIC;
        SyyStream_read : OUT STD_LOGIC;
        SxyStream_dout : IN STD_LOGIC_VECTOR (255 downto 0);
        SxyStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        SxyStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        SxyStream_empty_n : IN STD_LOGIC;
        SxyStream_read : OUT STD_LOGIC;
        RStream_din : OUT STD_LOGIC_VECTOR (255 downto 0);
        RStream_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
        RStream_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
        RStream_full_n : IN STD_LOGIC;
        RStream_write : OUT STD_LOGIC;
        zext_ln325 : IN STD_LOGIC_VECTOR (20 downto 0) );
    end component;


    component harris_ashr_54ns_32ns_54_2_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        OP : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (53 downto 0);
        din1 : IN STD_LOGIC_VECTOR (53 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (53 downto 0) );
    end component;



begin
    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76 : component harris_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start,
        ap_done => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done,
        ap_idle => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_idle,
        ap_ready => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_ready,
        SxxStream_dout => SxxStream_dout,
        SxxStream_num_data_valid => ap_const_lv5_0,
        SxxStream_fifo_cap => ap_const_lv5_0,
        SxxStream_empty_n => SxxStream_empty_n,
        SxxStream_read => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxxStream_read,
        SyyStream_dout => SyyStream_dout,
        SyyStream_num_data_valid => ap_const_lv5_0,
        SyyStream_fifo_cap => ap_const_lv5_0,
        SyyStream_empty_n => SyyStream_empty_n,
        SyyStream_read => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SyyStream_read,
        SxyStream_dout => SxyStream_dout,
        SxyStream_num_data_valid => ap_const_lv5_0,
        SxyStream_fifo_cap => ap_const_lv5_0,
        SxyStream_empty_n => SxyStream_empty_n,
        SxyStream_read => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxyStream_read,
        RStream_din => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_din,
        RStream_num_data_valid => ap_const_lv5_0,
        RStream_fifo_cap => ap_const_lv5_0,
        RStream_full_n => RStream_full_n,
        RStream_write => grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_write,
        zext_ln325 => r_V_reg_365);

    ashr_54ns_32ns_54_2_1_U85 : component harris_ashr_54ns_32ns_54_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        OP => 2,
        din0_WIDTH => 54,
        din1_WIDTH => 32,
        dout_WIDTH => 54)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => man_V_2_reg_318,
        din1 => grp_fu_208_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_208_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_ready = ap_const_logic_1)) then 
                    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                alpha_read_reg_279 <= alpha_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                cmp29_i_i_reg_312 <= cmp29_i_i_fu_134_p2;
                cmp_i_i_reg_299 <= cmp_i_i_fu_122_p2;
                ireg_reg_284 <= ireg_fu_89_p1;
                sub_i_i_reg_305 <= sub_i_i_fu_128_p2;
                tmp_reg_289 <= ireg_fu_89_p1(63 downto 63);
                trunc_ln600_reg_294 <= trunc_ln600_fu_118_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                cmp32_i_i_reg_329 <= cmp32_i_i_fu_181_p2;
                cond_i_i_reg_323 <= cond_i_i_fu_174_p3;
                empty_37_reg_334 <= empty_37_fu_186_p1;
                man_V_2_reg_318 <= man_V_2_fu_157_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((cmp29_i_i_reg_312 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                cmp40_i_i_reg_345 <= cmp40_i_i_fu_199_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((cmp29_i_i_reg_312 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                cmp54_i_i_reg_340 <= cmp54_i_i_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                r_V_reg_365 <= r_V_fu_270_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((cmp29_i_i_reg_312 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                ref_tmp61_1_i_reg_355 <= ref_tmp61_1_i_fu_222_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((cmp29_i_i_reg_312 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                shr_i_i_reg_360 <= grp_fu_208_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, alpha_empty_n, grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done, ap_CS_fsm_state7)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_const_logic_0 = alpha_empty_n) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    RStream_din <= grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_din;

    RStream_write_assign_proc : process(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_write, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            RStream_write <= grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_RStream_write;
        else 
            RStream_write <= ap_const_logic_0;
        end if; 
    end process;


    SxxStream_read_assign_proc : process(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxxStream_read, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            SxxStream_read <= grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxxStream_read;
        else 
            SxxStream_read <= ap_const_logic_0;
        end if; 
    end process;


    SxyStream_read_assign_proc : process(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxyStream_read, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            SxyStream_read <= grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SxyStream_read;
        else 
            SxyStream_read <= ap_const_logic_0;
        end if; 
    end process;


    SyyStream_read_assign_proc : process(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SyyStream_read, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            SyyStream_read <= grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_SyyStream_read;
        else 
            SyyStream_read <= ap_const_logic_0;
        end if; 
    end process;


    alpha_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, alpha_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            alpha_blk_n <= alpha_empty_n;
        else 
            alpha_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    alpha_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, alpha_empty_n)
    begin
        if ((not(((ap_const_logic_0 = alpha_empty_n) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            alpha_read <= ap_const_logic_1;
        else 
            alpha_read <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_ST_fsm_state1_blk_assign_proc : process(real_start, ap_done_reg, alpha_empty_n)
    begin
        if (((ap_const_logic_0 = alpha_empty_n) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;

    ap_ST_fsm_state7_blk_assign_proc : process(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done)
    begin
        if ((grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg, alpha_empty_n)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = alpha_empty_n) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (real_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    brmerge_i_fu_254_p2 <= (cmp_i_i_reg_299 or cmp32_i_i_reg_329);
    cmp29_i_i_fu_134_p2 <= "1" when (signed(sub_i_i_fu_128_p2) > signed(ap_const_lv12_14)) else "0";
    cmp32_i_i_fu_181_p2 <= "1" when (sub_i_i_reg_305 = ap_const_lv12_14) else "0";
    cmp40_i_i_fu_199_p2 <= "1" when (unsigned(cond_i_i_reg_323) < unsigned(ap_const_lv12_36)) else "0";
    cmp54_i_i_fu_190_p2 <= "1" when (unsigned(cond_i_i_fu_174_p3) < unsigned(ap_const_lv12_15)) else "0";
    cmp_i_i_fu_122_p2 <= "1" when (empty_fu_92_p1 = ap_const_lv63_0) else "0";
        cond_i_cast_i_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(cond_i_i_reg_323),32));

    cond_i_cast_icast_fu_213_p1 <= cond_i_cast_i_fu_196_p1(21 - 1 downto 0);
    cond_i_i_fu_174_p3 <= 
        sub30_i_i_fu_164_p2 when (cmp29_i_i_reg_312(0) = '1') else 
        sub31_i_i_fu_169_p2;
    conv3_i_i_i36_i_i_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(exp_tmp3_fu_104_p4),12));
    empty_37_fu_186_p1 <= man_V_2_fu_157_p3(21 - 1 downto 0);
    empty_38_fu_229_p1 <= shr_i_i_reg_360(21 - 1 downto 0);
    empty_fu_92_p1 <= ireg_fu_89_p1(63 - 1 downto 0);
    exp_tmp3_fu_104_p4 <= ireg_fu_89_p1(62 downto 52);
    grp_fu_208_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cond_i_cast_i_fu_196_p1),54));
    grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start <= grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_start_reg;

    internal_ap_ready_assign_proc : process(grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_response_Pipeline_VITIS_LOOP_325_1_VITIS_LOOP_326_2_fu_76_ap_done = ap_const_logic_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ireg_fu_89_p1 <= alpha_read_reg_279;
    man_V_1_fu_151_p2 <= std_logic_vector(unsigned(ap_const_lv54_0) - unsigned(zext_ln604_fu_147_p1));
    man_V_2_fu_157_p3 <= 
        man_V_1_fu_151_p2 when (tmp_reg_289(0) = '1') else 
        zext_ln604_fu_147_p1;
    p_cast_cast_i_fu_239_p3 <= 
        ap_const_lv21_1FFFFF when (tmp_12_fu_232_p3(0) = '1') else 
        ap_const_lv21_0;
    p_mux_i_fu_258_p3 <= 
        ap_const_lv21_0 when (cmp_i_i_reg_299(0) = '1') else 
        empty_37_reg_334;
    r_V_fu_270_p3 <= 
        p_mux_i_fu_258_p3 when (brmerge_i_fu_254_p2(0) = '1') else 
        spec_select_i_fu_264_p3;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    ref_tmp61_0_i_fu_247_p3 <= 
        empty_38_fu_229_p1 when (cmp40_i_i_reg_345(0) = '1') else 
        p_cast_cast_i_fu_239_p3;
    ref_tmp61_1_i_fu_222_p3 <= 
        shl_i_i_fu_217_p2 when (cmp54_i_i_reg_340(0) = '1') else 
        ap_const_lv21_0;
    shl_i_i_fu_217_p2 <= std_logic_vector(shift_left(unsigned(empty_37_reg_334),to_integer(unsigned('0' & cond_i_cast_icast_fu_213_p1(21-1 downto 0)))));
    spec_select_i_fu_264_p3 <= 
        ref_tmp61_0_i_fu_247_p3 when (cmp29_i_i_reg_312(0) = '1') else 
        ref_tmp61_1_i_reg_355;
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    sub30_i_i_fu_164_p2 <= std_logic_vector(unsigned(sub_i_i_reg_305) + unsigned(ap_const_lv12_FEC));
    sub31_i_i_fu_169_p2 <= std_logic_vector(unsigned(ap_const_lv12_14) - unsigned(sub_i_i_reg_305));
    sub_i_i_fu_128_p2 <= std_logic_vector(unsigned(ap_const_lv12_433) - unsigned(conv3_i_i_i36_i_i_fu_114_p1));
    tmp_12_fu_232_p3 <= ireg_reg_284(63 downto 63);
    trunc_ln600_fu_118_p1 <= ireg_fu_89_p1(52 - 1 downto 0);
    zext_ln604_cast_fu_140_p3 <= (ap_const_lv1_1 & trunc_ln600_reg_294);
    zext_ln604_fu_147_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln604_cast_fu_140_p3),54));
end behav;
