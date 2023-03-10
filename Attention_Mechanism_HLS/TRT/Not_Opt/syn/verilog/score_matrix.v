// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="score_matrix_score_matrix,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.297000,HLS_SYN_LAT=30,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1094,HLS_SYN_LUT=1116,HLS_VERSION=2021_1}" *)

module score_matrix (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        score_m_address0,
        score_m_ce0,
        score_m_we0,
        score_m_d0,
        queries_address0,
        queries_ce0,
        queries_q0,
        queries_address1,
        queries_ce1,
        queries_q1,
        keys_t_address0,
        keys_t_ce0,
        keys_t_q0,
        keys_t_address1,
        keys_t_ce1,
        keys_t_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] score_m_address0;
output   score_m_ce0;
output   score_m_we0;
output  [31:0] score_m_d0;
output  [3:0] queries_address0;
output   queries_ce0;
input  [31:0] queries_q0;
output  [3:0] queries_address1;
output   queries_ce1;
input  [31:0] queries_q1;
output  [3:0] keys_t_address0;
output   keys_t_ce0;
input  [31:0] keys_t_q0;
output  [3:0] keys_t_address1;
output   keys_t_ce1;
input  [31:0] keys_t_q1;

reg ap_idle;
reg score_m_ce0;
reg score_m_we0;
reg[3:0] queries_address0;
reg queries_ce0;
reg queries_ce1;
reg[3:0] keys_t_address0;
reg keys_t_ce0;
reg keys_t_ce1;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_state6_pp0_stage1_iter2;
wire    ap_block_state8_pp0_stage1_iter3;
wire    ap_block_state10_pp0_stage1_iter4;
wire    ap_block_state12_pp0_stage1_iter5;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln11_reg_440;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] icmp_ln11_fu_209_p2;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
wire    ap_block_state9_pp0_stage0_iter4;
wire    ap_block_state11_pp0_stage0_iter5;
wire    ap_block_state13_pp0_stage0_iter6;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln11_reg_440_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_440_pp0_iter2_reg;
reg   [0:0] icmp_ln11_reg_440_pp0_iter3_reg;
reg   [0:0] icmp_ln11_reg_440_pp0_iter4_reg;
wire   [1:0] select_ln11_fu_236_p3;
reg   [1:0] select_ln11_reg_444;
wire   [1:0] select_ln11_1_fu_262_p3;
reg   [1:0] select_ln11_1_reg_449;
wire   [3:0] select_ln11_2_fu_270_p3;
reg   [3:0] select_ln11_2_reg_455;
wire   [31:0] bitcast_ln11_fu_351_p1;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] add_ln13_fu_374_p2;
reg   [3:0] add_ln13_reg_495;
reg   [3:0] add_ln13_reg_495_pp0_iter1_reg;
reg   [3:0] add_ln13_reg_495_pp0_iter2_reg;
reg   [3:0] add_ln13_reg_495_pp0_iter3_reg;
reg   [3:0] add_ln13_reg_495_pp0_iter4_reg;
reg   [3:0] add_ln13_reg_495_pp0_iter5_reg;
wire   [31:0] bitcast_ln19_1_fu_391_p1;
wire   [31:0] bitcast_ln11_2_fu_401_p1;
wire   [31:0] grp_fu_162_p2;
reg   [31:0] mul_reg_520;
wire   [31:0] grp_fu_166_p2;
reg   [31:0] mul_1_reg_525;
reg   [31:0] mul_1_reg_525_pp0_iter2_reg;
wire   [31:0] bitcast_ln19_3_fu_406_p1;
reg   [31:0] mul_2_reg_535;
reg   [31:0] mul_2_reg_535_pp0_iter2_reg;
reg   [31:0] mul_2_reg_535_pp0_iter3_reg;
wire   [31:0] grp_fu_153_p2;
reg   [31:0] add_reg_540;
reg   [31:0] add_1_reg_545;
wire   [31:0] grp_fu_158_p2;
reg   [31:0] add_2_reg_550;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln19_2_fu_278_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln19_3_fu_289_p1;
wire   [63:0] o_cast_fu_294_p1;
wire   [63:0] zext_ln19_5_fu_309_p1;
wire   [63:0] zext_ln19_4_fu_366_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln19_6_fu_386_p1;
wire   [63:0] zext_ln13_3_fu_411_p1;
reg   [1:0] o_fu_62;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_o_load;
wire   [1:0] add_ln12_fu_314_p2;
reg   [1:0] m_fu_66;
reg   [1:0] ap_sig_allocacmp_m_1;
reg   [3:0] indvar_flatten_fu_70;
reg   [3:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [3:0] add_ln11_3_fu_215_p2;
reg   [31:0] grp_fu_153_p0;
reg   [31:0] grp_fu_153_p1;
reg   [31:0] grp_fu_162_p0;
reg   [31:0] grp_fu_162_p1;
wire   [31:0] grp_fu_166_p0;
wire   [31:0] grp_fu_166_p1;
wire   [3:0] tmp_fu_195_p3;
wire   [3:0] zext_ln19_fu_191_p1;
wire   [0:0] icmp_ln12_fu_230_p2;
wire   [1:0] add_ln11_fu_224_p2;
wire   [3:0] tmp_1_fu_248_p3;
wire   [3:0] zext_ln19_1_fu_244_p1;
wire   [3:0] sub_ln19_1_fu_256_p2;
wire   [3:0] sub_ln19_fu_203_p2;
wire   [3:0] add_ln11_1_fu_283_p2;
wire   [2:0] zext_ln13_1_fu_299_p1;
wire   [2:0] add_ln19_fu_303_p2;
wire   [3:0] p_shl3_cast_fu_338_p3;
wire   [3:0] zext_ln13_fu_335_p1;
wire   [3:0] add_ln11_2_fu_361_p2;
wire   [3:0] sub_ln13_fu_345_p2;
wire   [3:0] zext_ln13_2_fu_371_p1;
wire   [3:0] add_ln19_1_fu_380_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage0;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_229;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

score_matrix_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_153_p0),
    .din1(grp_fu_153_p1),
    .ce(1'b1),
    .dout(grp_fu_153_p2)
);

score_matrix_fadd_32ns_32ns_32_3_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_3_full_dsp_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(add_1_reg_545),
    .din1(mul_2_reg_535_pp0_iter3_reg),
    .ce(1'b1),
    .dout(grp_fu_158_p2)
);

score_matrix_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_162_p0),
    .din1(grp_fu_162_p1),
    .ce(1'b1),
    .dout(grp_fu_162_p2)
);

score_matrix_fmul_32ns_32ns_32_2_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_166_p0),
    .din1(grp_fu_166_p1),
    .ce(1'b1),
    .dout(grp_fu_166_p2)
);

score_matrix_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(1'b1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_229)) begin
        if ((icmp_ln11_fu_209_p2 == 1'd0)) begin
            indvar_flatten_fu_70 <= add_ln11_3_fu_215_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_70 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_229)) begin
        if ((icmp_ln11_fu_209_p2 == 1'd0)) begin
            m_fu_66 <= select_ln11_1_fu_262_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            m_fu_66 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_229)) begin
        if ((icmp_ln11_fu_209_p2 == 1'd0)) begin
            o_fu_62 <= add_ln12_fu_314_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            o_fu_62 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_1_reg_545 <= grp_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_2_reg_550 <= grp_fu_158_p2;
        add_ln13_reg_495_pp0_iter1_reg <= add_ln13_reg_495;
        add_ln13_reg_495_pp0_iter2_reg <= add_ln13_reg_495_pp0_iter1_reg;
        add_ln13_reg_495_pp0_iter3_reg <= add_ln13_reg_495_pp0_iter2_reg;
        add_ln13_reg_495_pp0_iter4_reg <= add_ln13_reg_495_pp0_iter3_reg;
        add_ln13_reg_495_pp0_iter5_reg <= add_ln13_reg_495_pp0_iter4_reg;
        mul_2_reg_535_pp0_iter2_reg <= mul_2_reg_535;
        mul_2_reg_535_pp0_iter3_reg <= mul_2_reg_535_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_reg_440 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_reg_495 <= add_ln13_fu_374_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_reg_540 <= grp_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln11_reg_440 <= icmp_ln11_fu_209_p2;
        icmp_ln11_reg_440_pp0_iter1_reg <= icmp_ln11_reg_440;
        icmp_ln11_reg_440_pp0_iter2_reg <= icmp_ln11_reg_440_pp0_iter1_reg;
        icmp_ln11_reg_440_pp0_iter3_reg <= icmp_ln11_reg_440_pp0_iter2_reg;
        icmp_ln11_reg_440_pp0_iter4_reg <= icmp_ln11_reg_440_pp0_iter3_reg;
        mul_1_reg_525 <= grp_fu_166_p2;
        mul_1_reg_525_pp0_iter2_reg <= mul_1_reg_525;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_2_reg_535 <= grp_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_reg_520 <= grp_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_209_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln11_1_reg_449 <= select_ln11_1_fu_262_p3;
        select_ln11_2_reg_455 <= select_ln11_2_fu_270_p3;
        select_ln11_reg_444 <= select_ln11_fu_236_p3;
    end
end

always @ (*) begin
    if (((icmp_ln11_reg_440 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_440_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_m_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_m_1 = m_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_o_load = 2'd0;
    end else begin
        ap_sig_allocacmp_o_load = o_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_153_p0 = add_reg_540;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_153_p0 = mul_reg_520;
    end else begin
        grp_fu_153_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_153_p1 = mul_1_reg_525_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_153_p1 = 32'd0;
    end else begin
        grp_fu_153_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_162_p0 = bitcast_ln11_2_fu_401_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_162_p0 = bitcast_ln11_fu_351_p1;
    end else begin
        grp_fu_162_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_162_p1 = bitcast_ln19_3_fu_406_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_162_p1 = bitcast_ln19_1_fu_391_p1;
    end else begin
        grp_fu_162_p1 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            keys_t_address0 = zext_ln19_6_fu_386_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            keys_t_address0 = zext_ln19_5_fu_309_p1;
        end else begin
            keys_t_address0 = 'bx;
        end
    end else begin
        keys_t_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        keys_t_ce0 = 1'b1;
    end else begin
        keys_t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        keys_t_ce1 = 1'b1;
    end else begin
        keys_t_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            queries_address0 = zext_ln19_4_fu_366_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            queries_address0 = zext_ln19_3_fu_289_p1;
        end else begin
            queries_address0 = 'bx;
        end
    end else begin
        queries_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        queries_ce0 = 1'b1;
    end else begin
        queries_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        queries_ce1 = 1'b1;
    end else begin
        queries_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        score_m_ce0 = 1'b1;
    end else begin
        score_m_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        score_m_we0 = 1'b1;
    end else begin
        score_m_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln11_1_fu_283_p2 = (select_ln11_2_fu_270_p3 + 4'd1);

assign add_ln11_2_fu_361_p2 = (select_ln11_2_reg_455 + 4'd2);

assign add_ln11_3_fu_215_p2 = (ap_sig_allocacmp_indvar_flatten_load + 4'd1);

assign add_ln11_fu_224_p2 = (ap_sig_allocacmp_m_1 + 2'd1);

assign add_ln12_fu_314_p2 = (select_ln11_fu_236_p3 + 2'd1);

assign add_ln13_fu_374_p2 = (sub_ln13_fu_345_p2 + zext_ln13_2_fu_371_p1);

assign add_ln19_1_fu_380_p2 = (zext_ln13_2_fu_371_p1 + 4'd6);

assign add_ln19_fu_303_p2 = (zext_ln13_1_fu_299_p1 + 3'd3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_229 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign bitcast_ln11_2_fu_401_p1 = queries_q0;

assign bitcast_ln11_fu_351_p1 = queries_q1;

assign bitcast_ln19_1_fu_391_p1 = keys_t_q1;

assign bitcast_ln19_3_fu_406_p1 = keys_t_q0;

assign grp_fu_166_p0 = queries_q0;

assign grp_fu_166_p1 = keys_t_q0;

assign icmp_ln11_fu_209_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln12_fu_230_p2 = ((ap_sig_allocacmp_o_load == 2'd3) ? 1'b1 : 1'b0);

assign keys_t_address1 = o_cast_fu_294_p1;

assign o_cast_fu_294_p1 = select_ln11_fu_236_p3;

assign p_shl3_cast_fu_338_p3 = {{select_ln11_1_reg_449}, {2'd0}};

assign queries_address1 = zext_ln19_2_fu_278_p1;

assign score_m_address0 = zext_ln13_3_fu_411_p1;

assign score_m_d0 = add_2_reg_550;

assign select_ln11_1_fu_262_p3 = ((icmp_ln12_fu_230_p2[0:0] == 1'b1) ? add_ln11_fu_224_p2 : ap_sig_allocacmp_m_1);

assign select_ln11_2_fu_270_p3 = ((icmp_ln12_fu_230_p2[0:0] == 1'b1) ? sub_ln19_1_fu_256_p2 : sub_ln19_fu_203_p2);

assign select_ln11_fu_236_p3 = ((icmp_ln12_fu_230_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_o_load);

assign sub_ln13_fu_345_p2 = (p_shl3_cast_fu_338_p3 - zext_ln13_fu_335_p1);

assign sub_ln19_1_fu_256_p2 = (tmp_1_fu_248_p3 - zext_ln19_1_fu_244_p1);

assign sub_ln19_fu_203_p2 = (tmp_fu_195_p3 - zext_ln19_fu_191_p1);

assign tmp_1_fu_248_p3 = {{add_ln11_fu_224_p2}, {2'd0}};

assign tmp_fu_195_p3 = {{ap_sig_allocacmp_m_1}, {2'd0}};

assign zext_ln13_1_fu_299_p1 = select_ln11_fu_236_p3;

assign zext_ln13_2_fu_371_p1 = select_ln11_reg_444;

assign zext_ln13_3_fu_411_p1 = add_ln13_reg_495_pp0_iter5_reg;

assign zext_ln13_fu_335_p1 = select_ln11_1_reg_449;

assign zext_ln19_1_fu_244_p1 = add_ln11_fu_224_p2;

assign zext_ln19_2_fu_278_p1 = select_ln11_2_fu_270_p3;

assign zext_ln19_3_fu_289_p1 = add_ln11_1_fu_283_p2;

assign zext_ln19_4_fu_366_p1 = add_ln11_2_fu_361_p2;

assign zext_ln19_5_fu_309_p1 = add_ln19_fu_303_p2;

assign zext_ln19_6_fu_386_p1 = add_ln19_1_fu_380_p2;

assign zext_ln19_fu_191_p1 = ap_sig_allocacmp_m_1;

endmodule //score_matrix
