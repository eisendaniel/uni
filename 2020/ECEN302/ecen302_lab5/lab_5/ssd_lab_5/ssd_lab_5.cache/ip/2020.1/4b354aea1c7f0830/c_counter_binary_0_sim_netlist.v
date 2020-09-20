// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Sep  3 12:38:39 2020
// Host        : the-churchill running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
N1ovhyqXN4voEOhQyDwzN31YqwFLfkm+2xOYZ5G3BkdyhiLpkbNonQWNvdyA6q+83PQn2fDm1L3j
rAydhg7warYv8wQ2fl79zBFAyB5WY0Dvk6HYtBqHFP/Z7BUmPUBbo1kunWDyabGR1pc6FzKZaOa6
OgxQHAj9NABWJCcxRAAsjGV8OXav6XKGNLMn1K/IRkfjT/Xpx2+6Ah5ssHnes8NPZbK4WDQqeTn0
cymrgUbSYaIVHhhnBNawBYvdDypMMCDUEGVV0mIfEXC5n7TqTw/z1umG8Kzy24h3AR6TUjOR5uqZ
92wkK+qRN/N7FUF4JCAXNHC7gyhQR8hAkwJx9g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B374UrfXGIEYoBfxqyuUbMu90IXn1+VskOpIh3/Iaa6v/HCIZEeYrdkZVHxdsCXfwlayOmlzzT24
fuDEnUkkQ5MqIolVf0KInm7YILGeqO+TG9FdTPrCrUEGN8oqEuDh/R2v3dJaZffxFgfrm+o0wkdz
m4jil1Ptnp+Agc0ze2+D+Xz6+NFHkQlliNuhJ7oN0ePEZ1cJYM7ZSyfRYUGNOBi21qxWAAwG0/q+
XLAxW7BHuM1LBRf8Vh3nYBEHii0taUDY/lHYqECZe80rmmqMFVCLf3D2j88Gi2+dY7ZJh55NBMXa
bKfKm9QJtgR45V/c6S0W2PPm7oI9RAGpGRaU0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6096)
`pragma protect data_block
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
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
