// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Sep  3 12:35:40 2020
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
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
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

  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
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
QcAFJi14Tfg93YG4iB7HMGJejnuplqVJHhiydEUTDisnWvOLruhWoiMlzf7LKqnad8VPRCUu4tY9
Wkdf1TTHK7/xzbg0N9h3H2For8GtJrH39gCyi0OQmQ32xBfzyqY8FsypGE2jAEc36yp2lIVBklbI
ufGoj+YnyAWjbvmiB2sEELKuRyzbkSDwj9+MK35Wcu0bH7EvBXWXVZGJRybVONCK0MsBa4yhdiWf
POxVLir2Hgxpvvxw8VwmCMj2OJLHsp54KmFTaPZ9PZPjeBeSv7OZy0C8opXjEY7E6Sgr8L5ejC7A
b8C3KcPvsv3acmbPoySI2d1v1FDTD5x84k6ojw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ovlmKtFF4Jo9Xsi3wkdDCJ6DxO/woXdpqyUh3IYBsx9CrEc5VRLhbQ5vSKI818m6LHlsS9ZbY/bw
HFp/QcwKmvd9C07unXnzRJA52jM+Kaqofuf9O+qlBopOmJgEJHGFQ6TCWiTqNBynVR/6GajHBZPr
hyy8ol/7FlfsC5zs05D6hkQyDyUjS/VsIOG9KVw/EgsvrkIgqHrnNZdFjMsf9FQwbRYYKrErveiS
DD2Ve81hZIJ4MLnkn8DX0JHuZkWaftWzPWFUGVXb1Vu8IYa5/F4BThPyXlGphAsMCvtq4l6hjk2l
ca+oiOSN3x+rtwUwDJ11sfcTnA+RjJH3jNXreQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4816)
`pragma protect data_block
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
QyY7WUFW1WdP5fvasEcma7snFAptwz2RYw49VA==
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
