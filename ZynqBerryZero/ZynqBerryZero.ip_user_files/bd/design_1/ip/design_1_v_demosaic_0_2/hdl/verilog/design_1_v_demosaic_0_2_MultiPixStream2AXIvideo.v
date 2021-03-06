// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_demosaic_0_2_MultiPixStream2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        imgUnzip_dout,
        imgUnzip_empty_n,
        imgUnzip_read,
        m_axis_video_TDATA,
        m_axis_video_TVALID,
        m_axis_video_TREADY,
        m_axis_video_TKEEP,
        m_axis_video_TSTRB,
        m_axis_video_TUSER,
        m_axis_video_TLAST,
        m_axis_video_TID,
        m_axis_video_TDEST,
        Height,
        WidthOut
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] imgUnzip_dout;
input   imgUnzip_empty_n;
output   imgUnzip_read;
output  [23:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [2:0] m_axis_video_TKEEP;
output  [2:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
input  [15:0] Height;
input  [15:0] WidthOut;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg imgUnzip_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    imgUnzip_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln181_reg_277;
reg    m_axis_video_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln181_reg_277_pp0_iter1_reg;
reg   [11:0] j_V_reg_147;
reg   [0:0] sof_3_reg_158;
wire   [10:0] trunc_ln172_fu_172_p1;
wire   [11:0] empty_fu_176_p1;
wire   [11:0] sub_i_i_fu_180_p2;
wire   [0:0] cmp_i36166_fu_186_p2;
wire   [10:0] i_V_1_fu_197_p2;
reg   [10:0] i_V_1_reg_258;
wire    ap_CS_fsm_state2;
wire    regslice_both_AXI_video_strm_V_data_V_U_apdone_blk;
wire   [0:0] icmp_ln878_fu_206_p2;
wire   [11:0] j_V_1_fu_211_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state4_io;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln181_fu_217_p2;
wire   [0:0] axi_last_V_fu_222_p2;
reg   [0:0] axi_last_V_reg_281;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_condition_pp0_exit_iter1_state4;
reg   [10:0] i_V_reg_136;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
reg   [0:0] ap_phi_mux_sof_3_phi_fu_163_p4;
reg   [0:0] sof_fu_84;
reg    ap_block_pp0_stage0_01001;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    m_axis_video_TVALID_int_regslice;
wire    m_axis_video_TREADY_int_regslice;
wire    regslice_both_AXI_video_strm_V_data_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_keep_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_strb_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_user_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_user_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_last_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_last_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_id_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_id_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk;
wire    regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy;
wire    regslice_both_AXI_video_strm_V_dest_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

design_1_v_demosaic_0_2_regslice_both #(
    .DataWidth( 24 ))
regslice_both_AXI_video_strm_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(imgUnzip_dout),
    .vld_in(m_axis_video_TVALID_int_regslice),
    .ack_in(m_axis_video_TREADY_int_regslice),
    .data_out(m_axis_video_TDATA),
    .vld_out(regslice_both_AXI_video_strm_V_data_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk)
);

design_1_v_demosaic_0_2_regslice_both #(
    .DataWidth( 3 ))
regslice_both_AXI_video_strm_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(3'd7),
    .vld_in(m_axis_video_TVALID_int_regslice),
    .ack_in(regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_video_TKEEP),
    .vld_out(regslice_both_AXI_video_strm_V_keep_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk)
);

design_1_v_demosaic_0_2_regslice_both #(
    .DataWidth( 3 ))
regslice_both_AXI_video_strm_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(3'd0),
    .vld_in(m_axis_video_TVALID_int_regslice),
    .ack_in(regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy),
    .data_out(m_axis_video_TSTRB),
    .vld_out(regslice_both_AXI_video_strm_V_strb_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk)
);

design_1_v_demosaic_0_2_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(ap_phi_mux_sof_3_phi_fu_163_p4),
    .vld_in(m_axis_video_TVALID_int_regslice),
    .ack_in(regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy),
    .data_out(m_axis_video_TUSER),
    .vld_out(regslice_both_AXI_video_strm_V_user_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_user_V_U_apdone_blk)
);

design_1_v_demosaic_0_2_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(axi_last_V_reg_281),
    .vld_in(m_axis_video_TVALID_int_regslice),
    .ack_in(regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_video_TLAST),
    .vld_out(regslice_both_AXI_video_strm_V_last_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_last_V_U_apdone_blk)
);

design_1_v_demosaic_0_2_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(1'd0),
    .vld_in(m_axis_video_TVALID_int_regslice),
    .ack_in(regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy),
    .data_out(m_axis_video_TID),
    .vld_out(regslice_both_AXI_video_strm_V_id_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_id_V_U_apdone_blk)
);

design_1_v_demosaic_0_2_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(1'd0),
    .vld_in(m_axis_video_TVALID_int_regslice),
    .ack_in(regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy),
    .data_out(m_axis_video_TDEST),
    .vld_out(regslice_both_AXI_video_strm_V_dest_V_U_vld_out),
    .ack_out(m_axis_video_TREADY),
    .apdone_blk(regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk)
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
        end else if (((icmp_ln878_fu_206_p2 == 1'd1) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln878_fu_206_p2 == 1'd0) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (cmp_i36166_fu_186_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter1_state4)) | ((icmp_ln878_fu_206_p2 == 1'd0) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (cmp_i36166_fu_186_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter1_state4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((icmp_ln878_fu_206_p2 == 1'd0) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (cmp_i36166_fu_186_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_V_reg_136 <= i_V_1_reg_258;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_V_reg_136 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln878_fu_206_p2 == 1'd0) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (cmp_i36166_fu_186_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_V_reg_147 <= 12'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln181_fu_217_p2 == 1'd0))) begin
        j_V_reg_147 <= j_V_1_fu_211_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln878_fu_206_p2 == 1'd0) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (cmp_i36166_fu_186_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sof_3_reg_158 <= sof_fu_84;
    end else if (((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sof_3_reg_158 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        sof_fu_84 <= 1'd1;
    end else if (((cmp_i36166_fu_186_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        sof_fu_84 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln181_fu_217_p2 == 1'd0))) begin
        axi_last_V_reg_281 <= axi_last_V_fu_222_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_V_1_reg_258 <= i_V_1_fu_197_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln181_reg_277 <= icmp_ln181_fu_217_p2;
        icmp_ln181_reg_277_pp0_iter1_reg <= icmp_ln181_reg_277;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_condition_pp0_exit_iter1_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter1_state4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln181_fu_217_p2 == 1'd1))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln878_fu_206_p2 == 1'd1) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_sof_3_phi_fu_163_p4 = 1'd0;
    end else begin
        ap_phi_mux_sof_3_phi_fu_163_p4 = sof_3_reg_158;
    end
end

always @ (*) begin
    if (((icmp_ln878_fu_206_p2 == 1'd1) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln181_reg_277 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgUnzip_blk_n = imgUnzip_empty_n;
    end else begin
        imgUnzip_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln181_reg_277 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgUnzip_read = 1'b1;
    end else begin
        imgUnzip_read = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln181_reg_277 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m_axis_video_TDATA_blk_n = m_axis_video_TREADY_int_regslice;
    end else begin
        m_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln181_reg_277 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axis_video_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_video_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln878_fu_206_p2 == 1'd1) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln878_fu_206_p2 == 1'd0) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (cmp_i36166_fu_186_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln878_fu_206_p2 == 1'd0) & (regslice_both_AXI_video_strm_V_data_V_U_apdone_blk == 1'b0) & (cmp_i36166_fu_186_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (m_axis_video_TREADY_int_regslice == 1'b0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln181_reg_277 == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0)) | ((icmp_ln181_reg_277 == 1'd0) & (imgUnzip_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state5_io) | ((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln181_reg_277 == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0)) | ((icmp_ln181_reg_277 == 1'd0) & (imgUnzip_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state5_io) | ((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln181_reg_277 == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0)) | ((icmp_ln181_reg_277 == 1'd0) & (imgUnzip_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((icmp_ln181_reg_277 == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((icmp_ln181_reg_277 == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0)) | ((icmp_ln181_reg_277 == 1'd0) & (imgUnzip_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state5_io = ((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((icmp_ln181_reg_277_pp0_iter1_reg == 1'd0) & (m_axis_video_TREADY_int_regslice == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign axi_last_V_fu_222_p2 = ((j_V_reg_147 == sub_i_i_fu_180_p2) ? 1'b1 : 1'b0);

assign cmp_i36166_fu_186_p2 = ((empty_fu_176_p1 == 12'd0) ? 1'b1 : 1'b0);

assign empty_fu_176_p1 = WidthOut[11:0];

assign i_V_1_fu_197_p2 = (i_V_reg_136 + 11'd1);

assign icmp_ln181_fu_217_p2 = ((j_V_reg_147 == empty_fu_176_p1) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_206_p2 = ((i_V_reg_136 == trunc_ln172_fu_172_p1) ? 1'b1 : 1'b0);

assign j_V_1_fu_211_p2 = (j_V_reg_147 + 12'd1);

assign m_axis_video_TVALID = regslice_both_AXI_video_strm_V_data_V_U_vld_out;

assign sub_i_i_fu_180_p2 = ($signed(empty_fu_176_p1) + $signed(12'd4095));

assign trunc_ln172_fu_172_p1 = Height[10:0];

endmodule //design_1_v_demosaic_0_2_MultiPixStream2AXIvideo
