// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Sep  3 12:38:42 2020
// Host        : the-churchill running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/private/projects/ECEN302/lab_5/ssd_lab_5/ssd_lab_5.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hSz56Rk9RyEnvmF4aSXVyP9K2nOGjdiFHFqmAQP9JzGjeuZqqTRC7g8115Ucu1yItbOQcasf1Y6I
4vo+jsuW8p/iPz02sQSTiCi01/Faw8Q3vvpgunZ2siHh/cxhSaqW2OAmi+rSh1MMGDCT31AWTg64
wegRzDwEldFT589LwP2BqxOSj59ZWBp43D/cG3YUkdsYEj9eNCehtvP8Rw2Pw1rOcpcS8eNFt1Yj
0gXbcw2+5S2dSkV2Xd3OjBU0eCWwQWccNZE+bSUeO6nUXuhEpCHOcedpo/+sDfYDgQdTHqs3aCvR
Q1T6KObPJNvx2fmLWxSri+VKm0a7HNh4iu8y+A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RHLf/dDScvHT+vG66aD9Rasd3ZB2+DRiEY7v1D9nd6Z2ZIeHegBGIBUId/XOINFWwDofuii/oauz
kmmaVkaOzSHYvbg3CIyRMK2fBl9Ky35meBKglH3t78aaK72Pjt44EqNhkeapOcd5v2IEDBLgkt6B
2bMDNo4Mohdig/aUDu4jxdF5A0rCh/khJxRPM81/NGgHMUgpWru+RkGUnnjaVD0ActvzPWL4yG6G
QxP0X/wTFD5ibhFLui98ZVQIzqQvDGfNlciYkslR22OqiQioQvtg75aYi9XTjWXXGew3pr8ytDsO
qZ5pHD39a7+KzAvZ8YXaQLNDNGl8qPcmuPi4fg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6176)
`pragma protect data_block
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
JlHM8PjaJ3CZZGAVMms8ctPxDQA=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
