// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_demosaic_0_2_Debayer (
        ap_start,
        start_full_n,
        start_out,
        start_write,
        imgBayer_dout,
        imgBayer_empty_n,
        imgBayer_read,
        imgRgb_din,
        imgRgb_full_n,
        imgRgb_write,
        height,
        width,
        bayerPhase_read,
        ap_clk,
        ap_rst,
        height_ap_vld,
        width_ap_vld,
        bayerPhase_read_ap_vld,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_start;
input   start_full_n;
output   start_out;
output   start_write;
input  [7:0] imgBayer_dout;
input   imgBayer_empty_n;
output   imgBayer_read;
output  [23:0] imgRgb_din;
input   imgRgb_full_n;
output   imgRgb_write;
input  [15:0] height;
input  [15:0] width;
input  [15:0] bayerPhase_read;
input   ap_clk;
input   ap_rst;
input   height_ap_vld;
input   width_ap_vld;
input   bayerPhase_read_ap_vld;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg start_write;

reg    real_start;
reg    start_once_reg;
wire    internal_ap_ready;
wire    DebayerG_U0_ap_start;
wire    DebayerG_U0_ap_done;
wire    DebayerG_U0_ap_continue;
wire    DebayerG_U0_ap_idle;
wire    DebayerG_U0_ap_ready;
wire    DebayerG_U0_start_out;
wire    DebayerG_U0_start_write;
wire    DebayerG_U0_imgBayer_read;
wire   [23:0] DebayerG_U0_img_din;
wire    DebayerG_U0_img_write;
wire   [15:0] DebayerG_U0_bayerPhase_out_din;
wire    DebayerG_U0_bayerPhase_out_write;
wire    DebayerRatBorBatR_U0_ap_start;
wire    DebayerRatBorBatR_U0_ap_done;
wire    DebayerRatBorBatR_U0_ap_continue;
wire    DebayerRatBorBatR_U0_ap_idle;
wire    DebayerRatBorBatR_U0_ap_ready;
wire    DebayerRatBorBatR_U0_start_out;
wire    DebayerRatBorBatR_U0_start_write;
wire    DebayerRatBorBatR_U0_srcImg_read;
wire   [23:0] DebayerRatBorBatR_U0_outImg_din;
wire    DebayerRatBorBatR_U0_outImg_write;
wire    DebayerRatBorBatR_U0_bayerPhase_c_read;
wire   [15:0] DebayerRatBorBatR_U0_bayerPhase_c9_din;
wire    DebayerRatBorBatR_U0_bayerPhase_c9_write;
wire    DebayerRandBatG_U0_ap_start;
wire    DebayerRandBatG_U0_ap_done;
wire    DebayerRandBatG_U0_ap_continue;
wire    DebayerRandBatG_U0_ap_idle;
wire    DebayerRandBatG_U0_ap_ready;
wire    DebayerRandBatG_U0_srcImg_read;
wire   [23:0] DebayerRandBatG_U0_outImg_din;
wire    DebayerRandBatG_U0_outImg_write;
wire    DebayerRandBatG_U0_bayerPhase_read;
wire    ap_sync_continue;
wire    imgG_full_n;
wire   [23:0] imgG_dout;
wire    imgG_empty_n;
wire    bayerPhase_c_full_n;
wire   [15:0] bayerPhase_c_dout;
wire    bayerPhase_c_empty_n;
wire    imgRB_full_n;
wire   [23:0] imgRB_dout;
wire    imgRB_empty_n;
wire    bayerPhase_c9_full_n;
wire   [15:0] bayerPhase_c9_dout;
wire    bayerPhase_c9_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_DebayerRatBorBatR_U0_din;
wire    start_for_DebayerRatBorBatR_U0_full_n;
wire   [0:0] start_for_DebayerRatBorBatR_U0_dout;
wire    start_for_DebayerRatBorBatR_U0_empty_n;
wire   [0:0] start_for_DebayerRandBatG_U0_din;
wire    start_for_DebayerRandBatG_U0_full_n;
wire   [0:0] start_for_DebayerRandBatG_U0_dout;
wire    start_for_DebayerRandBatG_U0_empty_n;
wire    DebayerRandBatG_U0_start_full_n;
wire    DebayerRandBatG_U0_start_write;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
end

design_1_v_demosaic_0_2_DebayerG DebayerG_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(DebayerG_U0_ap_start),
    .start_full_n(start_for_DebayerRatBorBatR_U0_full_n),
    .ap_done(DebayerG_U0_ap_done),
    .ap_continue(DebayerG_U0_ap_continue),
    .ap_idle(DebayerG_U0_ap_idle),
    .ap_ready(DebayerG_U0_ap_ready),
    .start_out(DebayerG_U0_start_out),
    .start_write(DebayerG_U0_start_write),
    .imgBayer_dout(imgBayer_dout),
    .imgBayer_empty_n(imgBayer_empty_n),
    .imgBayer_read(DebayerG_U0_imgBayer_read),
    .img_din(DebayerG_U0_img_din),
    .img_full_n(imgG_full_n),
    .img_write(DebayerG_U0_img_write),
    .height(height),
    .width(width),
    .p_read(bayerPhase_read),
    .bayerPhase_out_din(DebayerG_U0_bayerPhase_out_din),
    .bayerPhase_out_full_n(bayerPhase_c_full_n),
    .bayerPhase_out_write(DebayerG_U0_bayerPhase_out_write)
);

design_1_v_demosaic_0_2_DebayerRatBorBatR DebayerRatBorBatR_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(DebayerRatBorBatR_U0_ap_start),
    .start_full_n(start_for_DebayerRandBatG_U0_full_n),
    .ap_done(DebayerRatBorBatR_U0_ap_done),
    .ap_continue(DebayerRatBorBatR_U0_ap_continue),
    .ap_idle(DebayerRatBorBatR_U0_ap_idle),
    .ap_ready(DebayerRatBorBatR_U0_ap_ready),
    .start_out(DebayerRatBorBatR_U0_start_out),
    .start_write(DebayerRatBorBatR_U0_start_write),
    .srcImg_dout(imgG_dout),
    .srcImg_empty_n(imgG_empty_n),
    .srcImg_read(DebayerRatBorBatR_U0_srcImg_read),
    .outImg_din(DebayerRatBorBatR_U0_outImg_din),
    .outImg_full_n(imgRB_full_n),
    .outImg_write(DebayerRatBorBatR_U0_outImg_write),
    .height(height),
    .width(width),
    .bayerPhase_c_dout(bayerPhase_c_dout),
    .bayerPhase_c_empty_n(bayerPhase_c_empty_n),
    .bayerPhase_c_read(DebayerRatBorBatR_U0_bayerPhase_c_read),
    .bayerPhase_c9_din(DebayerRatBorBatR_U0_bayerPhase_c9_din),
    .bayerPhase_c9_full_n(bayerPhase_c9_full_n),
    .bayerPhase_c9_write(DebayerRatBorBatR_U0_bayerPhase_c9_write)
);

design_1_v_demosaic_0_2_DebayerRandBatG DebayerRandBatG_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(DebayerRandBatG_U0_ap_start),
    .ap_done(DebayerRandBatG_U0_ap_done),
    .ap_continue(DebayerRandBatG_U0_ap_continue),
    .ap_idle(DebayerRandBatG_U0_ap_idle),
    .ap_ready(DebayerRandBatG_U0_ap_ready),
    .srcImg_dout(imgRB_dout),
    .srcImg_empty_n(imgRB_empty_n),
    .srcImg_read(DebayerRandBatG_U0_srcImg_read),
    .outImg_din(DebayerRandBatG_U0_outImg_din),
    .outImg_full_n(imgRgb_full_n),
    .outImg_write(DebayerRandBatG_U0_outImg_write),
    .height(height),
    .width(width),
    .bayerPhase_dout(bayerPhase_c9_dout),
    .bayerPhase_empty_n(bayerPhase_c9_empty_n),
    .bayerPhase_read(DebayerRandBatG_U0_bayerPhase_read)
);

design_1_v_demosaic_0_2_fifo_w24_d2_S imgG_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(DebayerG_U0_img_din),
    .if_full_n(imgG_full_n),
    .if_write(DebayerG_U0_img_write),
    .if_dout(imgG_dout),
    .if_empty_n(imgG_empty_n),
    .if_read(DebayerRatBorBatR_U0_srcImg_read)
);

design_1_v_demosaic_0_2_fifo_w16_d2_S bayerPhase_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(DebayerG_U0_bayerPhase_out_din),
    .if_full_n(bayerPhase_c_full_n),
    .if_write(DebayerG_U0_bayerPhase_out_write),
    .if_dout(bayerPhase_c_dout),
    .if_empty_n(bayerPhase_c_empty_n),
    .if_read(DebayerRatBorBatR_U0_bayerPhase_c_read)
);

design_1_v_demosaic_0_2_fifo_w24_d2_S imgRB_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(DebayerRatBorBatR_U0_outImg_din),
    .if_full_n(imgRB_full_n),
    .if_write(DebayerRatBorBatR_U0_outImg_write),
    .if_dout(imgRB_dout),
    .if_empty_n(imgRB_empty_n),
    .if_read(DebayerRandBatG_U0_srcImg_read)
);

design_1_v_demosaic_0_2_fifo_w16_d2_S bayerPhase_c9_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(DebayerRatBorBatR_U0_bayerPhase_c9_din),
    .if_full_n(bayerPhase_c9_full_n),
    .if_write(DebayerRatBorBatR_U0_bayerPhase_c9_write),
    .if_dout(bayerPhase_c9_dout),
    .if_empty_n(bayerPhase_c9_empty_n),
    .if_read(DebayerRandBatG_U0_bayerPhase_read)
);

design_1_v_demosaic_0_2_start_for_DebayerRatBorBatR_U0 start_for_DebayerRatBorBatR_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_DebayerRatBorBatR_U0_din),
    .if_full_n(start_for_DebayerRatBorBatR_U0_full_n),
    .if_write(DebayerG_U0_start_write),
    .if_dout(start_for_DebayerRatBorBatR_U0_dout),
    .if_empty_n(start_for_DebayerRatBorBatR_U0_empty_n),
    .if_read(DebayerRatBorBatR_U0_ap_ready)
);

design_1_v_demosaic_0_2_start_for_DebayerRandBatG_U0 start_for_DebayerRandBatG_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_DebayerRandBatG_U0_din),
    .if_full_n(start_for_DebayerRandBatG_U0_full_n),
    .if_write(DebayerRatBorBatR_U0_start_write),
    .if_dout(start_for_DebayerRandBatG_U0_dout),
    .if_empty_n(start_for_DebayerRandBatG_U0_empty_n),
    .if_read(DebayerRandBatG_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
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

assign DebayerG_U0_ap_continue = 1'b1;

assign DebayerG_U0_ap_start = real_start;

assign DebayerRandBatG_U0_ap_continue = ap_continue;

assign DebayerRandBatG_U0_ap_start = start_for_DebayerRandBatG_U0_empty_n;

assign DebayerRandBatG_U0_start_full_n = 1'b1;

assign DebayerRandBatG_U0_start_write = 1'b0;

assign DebayerRatBorBatR_U0_ap_continue = 1'b1;

assign DebayerRatBorBatR_U0_ap_start = start_for_DebayerRatBorBatR_U0_empty_n;

assign ap_done = DebayerRandBatG_U0_ap_done;

assign ap_idle = (DebayerRatBorBatR_U0_ap_idle & DebayerRandBatG_U0_ap_idle & DebayerG_U0_ap_idle);

assign ap_ready = internal_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = DebayerRandBatG_U0_ap_done;

assign ap_sync_ready = DebayerG_U0_ap_ready;

assign imgBayer_read = DebayerG_U0_imgBayer_read;

assign imgRgb_din = DebayerRandBatG_U0_outImg_din;

assign imgRgb_write = DebayerRandBatG_U0_outImg_write;

assign internal_ap_ready = ap_sync_ready;

assign start_for_DebayerRandBatG_U0_din = 1'b1;

assign start_for_DebayerRatBorBatR_U0_din = 1'b1;

assign start_out = real_start;

endmodule //design_1_v_demosaic_0_2_Debayer
