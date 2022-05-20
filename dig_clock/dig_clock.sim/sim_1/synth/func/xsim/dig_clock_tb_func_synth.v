// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri May 20 19:05:37 2022
// Host        : DESKTOP-F9B13MH running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/MyCodes/vivado/dig_clock/dig_clock.sim/sim_1/synth/func/xsim/dig_clock_tb_func_synth.v
// Design      : dig_clock
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bin2bcd_0,bin2bcd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "bin2bcd,Vivado 2018.2" *) 
module bin2bcd_0
   (bin,
    bcd);
  input [7:0]bin;
  output [7:0]bcd;

  wire [7:1]\^bcd ;
  wire \bcd[4]_INST_0_i_1_n_0 ;
  wire \bcd[4]_INST_0_i_2_n_0 ;
  wire \bcd[4]_INST_0_i_3_n_0 ;
  wire [7:0]bin;

  assign bcd[7:1] = \^bcd [7:1];
  assign bcd[0] = bin[0];
  LUT4 #(
    .INIT(16'h11EA)) 
    \bcd[1]_INST_0 
       (.I0(\bcd[4]_INST_0_i_3_n_0 ),
        .I1(\bcd[4]_INST_0_i_2_n_0 ),
        .I2(\bcd[4]_INST_0_i_1_n_0 ),
        .I3(bin[1]),
        .O(\^bcd [1]));
  LUT4 #(
    .INIT(16'h998C)) 
    \bcd[2]_INST_0 
       (.I0(bin[1]),
        .I1(\bcd[4]_INST_0_i_1_n_0 ),
        .I2(\bcd[4]_INST_0_i_2_n_0 ),
        .I3(\bcd[4]_INST_0_i_3_n_0 ),
        .O(\^bcd [2]));
  LUT4 #(
    .INIT(16'h1E10)) 
    \bcd[3]_INST_0 
       (.I0(bin[1]),
        .I1(\bcd[4]_INST_0_i_1_n_0 ),
        .I2(\bcd[4]_INST_0_i_2_n_0 ),
        .I3(\bcd[4]_INST_0_i_3_n_0 ),
        .O(\^bcd [3]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \bcd[4]_INST_0 
       (.I0(bin[1]),
        .I1(\bcd[4]_INST_0_i_1_n_0 ),
        .I2(\bcd[4]_INST_0_i_2_n_0 ),
        .I3(\bcd[4]_INST_0_i_3_n_0 ),
        .O(\^bcd [4]));
  LUT6 #(
    .INIT(64'h8A65A651518A18A6)) 
    \bcd[4]_INST_0_i_1 
       (.I0(bin[6]),
        .I1(bin[5]),
        .I2(bin[7]),
        .I3(bin[4]),
        .I4(bin[3]),
        .I5(bin[2]),
        .O(\bcd[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC61831C68C31638C)) 
    \bcd[4]_INST_0_i_2 
       (.I0(bin[2]),
        .I1(bin[3]),
        .I2(bin[4]),
        .I3(bin[7]),
        .I4(bin[5]),
        .I5(bin[6]),
        .O(\bcd[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0821420810428410)) 
    \bcd[4]_INST_0_i_3 
       (.I0(bin[2]),
        .I1(bin[3]),
        .I2(bin[4]),
        .I3(bin[7]),
        .I4(bin[5]),
        .I5(bin[6]),
        .O(\bcd[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2DC201D609D240D6)) 
    \bcd[5]_INST_0 
       (.I0(bin[6]),
        .I1(bin[5]),
        .I2(bin[7]),
        .I3(bin[4]),
        .I4(bin[3]),
        .I5(bin[2]),
        .O(\^bcd [5]));
  LUT6 #(
    .INIT(64'hF000000F1FFCF800)) 
    \bcd[6]_INST_0 
       (.I0(bin[2]),
        .I1(bin[3]),
        .I2(bin[4]),
        .I3(bin[7]),
        .I4(bin[5]),
        .I5(bin[6]),
        .O(\^bcd [6]));
  LUT6 #(
    .INIT(64'h000103F0E0000000)) 
    \bcd[7]_INST_0 
       (.I0(bin[2]),
        .I1(bin[3]),
        .I2(bin[4]),
        .I3(bin[7]),
        .I4(bin[5]),
        .I5(bin[6]),
        .O(\^bcd [7]));
endmodule

module counter
   (Q,
    \min_reg[7]_0 ,
    sys_clk_IBUF_BUFG,
    sys_rst_n_IBUF,
    D);
  output [7:0]Q;
  output [7:0]\min_reg[7]_0 ;
  input sys_clk_IBUF_BUFG;
  input sys_rst_n_IBUF;
  input [0:0]D;

  wire [0:0]D;
  wire [7:0]Q;
  wire counter;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [25:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire detect_n_0;
  wire go_reg_n_0;
  wire \min[0]_i_1_n_0 ;
  wire \min[1]_i_1_n_0 ;
  wire \min[2]_i_1_n_0 ;
  wire \min[2]_i_2_n_0 ;
  wire \min[3]_i_1_n_0 ;
  wire \min[3]_i_2_n_0 ;
  wire \min[4]_i_1_n_0 ;
  wire \min[4]_i_2_n_0 ;
  wire \min[5]_i_1_n_0 ;
  wire \min[5]_i_2_n_0 ;
  wire \min[6]_i_1_n_0 ;
  wire \min[6]_i_2_n_0 ;
  wire \min[7]_i_1_n_0 ;
  wire \min[7]_i_2_n_0 ;
  wire \min[7]_i_3_n_0 ;
  wire [7:0]\min_reg[7]_0 ;
  wire [7:0]p_1_in;
  wire \sec[2]_i_2_n_0 ;
  wire \sec[3]_i_2_n_0 ;
  wire \sec[4]_i_2_n_0 ;
  wire \sec[5]_i_2_n_0 ;
  wire \sec[6]_i_2_n_0 ;
  wire \sec[7]_i_10_n_0 ;
  wire \sec[7]_i_11_n_0 ;
  wire \sec[7]_i_12_n_0 ;
  wire \sec[7]_i_1_n_0 ;
  wire \sec[7]_i_3_n_0 ;
  wire \sec[7]_i_4_n_0 ;
  wire \sec[7]_i_5_n_0 ;
  wire \sec[7]_i_6_n_0 ;
  wire \sec[7]_i_7_n_0 ;
  wire \sec[7]_i_8_n_0 ;
  wire \sec[7]_i_9_n_0 ;
  wire sys_clk_IBUF_BUFG;
  wire sys_rst_n_IBUF;
  wire [3:1]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1 
       (.I0(go_reg_n_0),
        .I1(sys_rst_n_IBUF),
        .O(counter));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[3]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[2]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_6 
       (.I0(counter_reg[1]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[25]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[24]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(\sec[7]_i_3_n_0 ),
        .O(\counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(counter));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_3_n_0 }),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(counter));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(counter));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(counter));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(counter));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:1],\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(counter));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(counter));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(go_reg_n_0),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(counter));
  pos_detect detect
       (.D(D),
        .go_reg(detect_n_0),
        .go_reg_0(go_reg_n_0),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .sys_rst_n_IBUF(sys_rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    go_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(detect_n_0),
        .Q(go_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h5CCCCCCC)) 
    \min[0]_i_1 
       (.I0(\min_reg[7]_0 [0]),
        .I1(sys_rst_n_IBUF),
        .I2(go_reg_n_0),
        .I3(\sec[7]_i_3_n_0 ),
        .I4(\sec[7]_i_5_n_0 ),
        .O(\min[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAEAAAEAAA2AAA)) 
    \min[1]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\min_reg[7]_0 [1]),
        .I5(\min_reg[7]_0 [0]),
        .O(\min[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA2AAA2AAAEAAA)) 
    \min[2]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\min[2]_i_2_n_0 ),
        .I5(\min_reg[7]_0 [2]),
        .O(\min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \min[2]_i_2 
       (.I0(\min_reg[7]_0 [1]),
        .I1(\min_reg[7]_0 [0]),
        .O(\min[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAEAAAEAAA2AAA)) 
    \min[3]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\min_reg[7]_0 [3]),
        .I5(\min[3]_i_2_n_0 ),
        .O(\min[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \min[3]_i_2 
       (.I0(\min_reg[7]_0 [2]),
        .I1(\min_reg[7]_0 [0]),
        .I2(\min_reg[7]_0 [1]),
        .O(\min[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA2AAA2AAAEAAA)) 
    \min[4]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\min[4]_i_2_n_0 ),
        .I5(\min_reg[7]_0 [4]),
        .O(\min[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \min[4]_i_2 
       (.I0(\min_reg[7]_0 [3]),
        .I1(\min_reg[7]_0 [1]),
        .I2(\min_reg[7]_0 [0]),
        .I3(\min_reg[7]_0 [2]),
        .O(\min[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3CAAAAAAAAAAAAAA)) 
    \min[5]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(\min[5]_i_2_n_0 ),
        .I2(\min_reg[7]_0 [5]),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\sec[7]_i_3_n_0 ),
        .I5(go_reg_n_0),
        .O(\min[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \min[5]_i_2 
       (.I0(\min_reg[7]_0 [4]),
        .I1(\min_reg[7]_0 [2]),
        .I2(\min_reg[7]_0 [0]),
        .I3(\min_reg[7]_0 [1]),
        .I4(\min_reg[7]_0 [3]),
        .O(\min[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3CAAAAAAAAAAAAAA)) 
    \min[6]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(\min[6]_i_2_n_0 ),
        .I2(\min_reg[7]_0 [6]),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\sec[7]_i_3_n_0 ),
        .I5(go_reg_n_0),
        .O(\min[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \min[6]_i_2 
       (.I0(\min_reg[7]_0 [5]),
        .I1(\min_reg[7]_0 [3]),
        .I2(\min_reg[7]_0 [1]),
        .I3(\min_reg[7]_0 [0]),
        .I4(\min_reg[7]_0 [2]),
        .I5(\min_reg[7]_0 [4]),
        .O(\min[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \min[7]_i_1 
       (.I0(\sec[7]_i_5_n_0 ),
        .I1(\sec[7]_i_3_n_0 ),
        .I2(go_reg_n_0),
        .I3(sys_rst_n_IBUF),
        .O(\min[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAAAAAAAAAAAAA)) 
    \min[7]_i_2 
       (.I0(sys_rst_n_IBUF),
        .I1(\min[7]_i_3_n_0 ),
        .I2(\min_reg[7]_0 [7]),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\sec[7]_i_3_n_0 ),
        .I5(go_reg_n_0),
        .O(\min[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \min[7]_i_3 
       (.I0(\min_reg[7]_0 [6]),
        .I1(\min[6]_i_2_n_0 ),
        .O(\min[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[0]_i_1_n_0 ),
        .Q(\min_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[1]_i_1_n_0 ),
        .Q(\min_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[2]_i_1_n_0 ),
        .Q(\min_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[3]_i_1_n_0 ),
        .Q(\min_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[4]_i_1_n_0 ),
        .Q(\min_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[5]_i_1_n_0 ),
        .Q(\min_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[6]_i_1_n_0 ),
        .Q(\min_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[7]_i_2_n_0 ),
        .Q(\min_reg[7]_0 [7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h11F0F0F0)) 
    \sec[0]_i_1 
       (.I0(Q[0]),
        .I1(\sec[7]_i_5_n_0 ),
        .I2(sys_rst_n_IBUF),
        .I3(\sec[7]_i_3_n_0 ),
        .I4(go_reg_n_0),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h2A2A2AEA2AEA2A2A)) 
    \sec[1]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h2AEA2A2A2A2A2AEA)) 
    \sec[2]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\sec[2]_i_2_n_0 ),
        .I5(Q[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sec[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\sec[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2AEA2AEA2A2A)) 
    \sec[3]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(\sec[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \sec[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\sec[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AEA2A2A2A2A2AEA)) 
    \sec[4]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(go_reg_n_0),
        .I2(\sec[7]_i_3_n_0 ),
        .I3(\sec[7]_i_5_n_0 ),
        .I4(\sec[4]_i_2_n_0 ),
        .I5(Q[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sec[4]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\sec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03AAAAAA0CAAAAAA)) 
    \sec[5]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(\sec[5]_i_2_n_0 ),
        .I2(\sec[7]_i_5_n_0 ),
        .I3(\sec[7]_i_3_n_0 ),
        .I4(go_reg_n_0),
        .I5(Q[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sec[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\sec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03AAAAAA0CAAAAAA)) 
    \sec[6]_i_1 
       (.I0(sys_rst_n_IBUF),
        .I1(\sec[6]_i_2_n_0 ),
        .I2(\sec[7]_i_5_n_0 ),
        .I3(\sec[7]_i_3_n_0 ),
        .I4(go_reg_n_0),
        .I5(Q[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sec[6]_i_2 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sec[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \sec[7]_i_1 
       (.I0(go_reg_n_0),
        .I1(\sec[7]_i_3_n_0 ),
        .I2(sys_rst_n_IBUF),
        .O(\sec[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sec[7]_i_10 
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(counter_reg[6]),
        .O(\sec[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sec[7]_i_11 
       (.I0(counter_reg[17]),
        .I1(counter_reg[15]),
        .I2(counter_reg[10]),
        .I3(counter_reg[9]),
        .O(\sec[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \sec[7]_i_12 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\sec[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0CAAAAAA03AAAAAA)) 
    \sec[7]_i_2 
       (.I0(sys_rst_n_IBUF),
        .I1(\sec[7]_i_4_n_0 ),
        .I2(\sec[7]_i_5_n_0 ),
        .I3(\sec[7]_i_3_n_0 ),
        .I4(go_reg_n_0),
        .I5(Q[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sec[7]_i_3 
       (.I0(\sec[7]_i_6_n_0 ),
        .I1(\sec[7]_i_7_n_0 ),
        .I2(\sec[7]_i_8_n_0 ),
        .I3(\sec[7]_i_9_n_0 ),
        .I4(\sec[7]_i_10_n_0 ),
        .I5(\sec[7]_i_11_n_0 ),
        .O(\sec[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \sec[7]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\sec[2]_i_2_n_0 ),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\sec[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \sec[7]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\sec[7]_i_12_n_0 ),
        .O(\sec[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sec[7]_i_6 
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .I3(counter_reg[16]),
        .I4(counter_reg[19]),
        .I5(counter_reg[18]),
        .O(\sec[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sec[7]_i_7 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\sec[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sec[7]_i_8 
       (.I0(counter_reg[11]),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .O(\sec[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \sec[7]_i_9 
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .I2(counter_reg[22]),
        .I3(counter_reg[23]),
        .I4(counter_reg[25]),
        .I5(counter_reg[24]),
        .O(\sec[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\sec[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module dig_clock
   (sys_clk,
    sys_rst_n,
    i_start,
    an,
    a_to_g);
  input sys_clk;
  input sys_rst_n;
  input i_start;
  output [3:0]an;
  output [7:0]a_to_g;

  wire [7:0]a_to_g;
  wire [6:0]a_to_g_OBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire enc_n_0;
  wire i_start;
  wire i_start_IBUF;
  wire [7:0]min;
  wire [7:0]min_bcd;
  wire [7:0]sec;
  wire [7:0]sec_bcd;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire sys_rst_n;
  wire sys_rst_n_IBUF;

  OBUF \a_to_g_OBUF[0]_inst 
       (.I(a_to_g_OBUF[0]),
        .O(a_to_g[0]));
  OBUF \a_to_g_OBUF[1]_inst 
       (.I(a_to_g_OBUF[1]),
        .O(a_to_g[1]));
  OBUF \a_to_g_OBUF[2]_inst 
       (.I(a_to_g_OBUF[2]),
        .O(a_to_g[2]));
  OBUF \a_to_g_OBUF[3]_inst 
       (.I(a_to_g_OBUF[3]),
        .O(a_to_g[3]));
  OBUF \a_to_g_OBUF[4]_inst 
       (.I(a_to_g_OBUF[4]),
        .O(a_to_g[4]));
  OBUF \a_to_g_OBUF[5]_inst 
       (.I(a_to_g_OBUF[5]),
        .O(a_to_g[5]));
  OBUF \a_to_g_OBUF[6]_inst 
       (.I(a_to_g_OBUF[6]),
        .O(a_to_g[6]));
  OBUF \a_to_g_OBUF[7]_inst 
       (.I(1'b1),
        .O(a_to_g[7]));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  (* X_CORE_INFO = "bin2bcd,Vivado 2018.2" *) 
  bin2bcd_0 bin2bcd_min
       (.bcd(min_bcd),
        .bin(min));
  (* X_CORE_INFO = "bin2bcd,Vivado 2018.2" *) 
  bin2bcd_0 bin2bcd_sec
       (.bcd(sec_bcd),
        .bin(sec));
  counter cnter
       (.D(i_start_IBUF),
        .Q(sec),
        .\min_reg[7]_0 (min),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .sys_rst_n_IBUF(sys_rst_n_IBUF));
  en_clock enc
       (.E(enc_n_0),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  IBUF sys_rst_n_IBUF_inst
       (.I(sys_rst_n),
        .O(sys_rst_n_IBUF));
  x7seg x7seg1
       (.CLK(sys_clk_IBUF_BUFG),
        .E(enc_n_0),
        .Q(an_OBUF),
        .a_to_g_OBUF(a_to_g_OBUF),
        .\bbstub_bcd[7] (sec_bcd),
        .bcd(min_bcd));
endmodule

module en_clock
   (E,
    sys_clk_IBUF_BUFG);
  output [0:0]E;
  input sys_clk_IBUF_BUFG;

  wire [0:0]E;
  wire [15:0]counter;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter[15]_i_5_n_0 ;
  wire [0:0]counter_0;
  wire \counter_reg[12]_i_1__0_n_0 ;
  wire \counter_reg[12]_i_1__0_n_1 ;
  wire \counter_reg[12]_i_1__0_n_2 ;
  wire \counter_reg[12]_i_1__0_n_3 ;
  wire \counter_reg[15]_i_2_n_2 ;
  wire \counter_reg[15]_i_2_n_3 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire [15:1]data0;
  wire sys_clk_IBUF_BUFG;
  wire [3:2]\NLW_counter_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[15]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .O(counter_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \counter[15]_i_1 
       (.I0(\counter[15]_i_3_n_0 ),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(\counter[15]_i_4_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[15]_i_3 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(\counter[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \counter[15]_i_4 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[9]),
        .I3(counter[8]),
        .I4(\counter[15]_i_5_n_0 ),
        .O(\counter[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[15]_i_5 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[14]),
        .I3(counter[15]),
        .O(\counter[15]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_0),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(counter[10]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(counter[11]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(counter[12]),
        .R(E));
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\counter_reg[12]_i_1__0_n_0 ,\counter_reg[12]_i_1__0_n_1 ,\counter_reg[12]_i_1__0_n_2 ,\counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(counter[13]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(counter[14]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(counter[15]),
        .R(E));
  CARRY4 \counter_reg[15]_i_2 
       (.CI(\counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[15]_i_2_CO_UNCONNECTED [3:2],\counter_reg[15]_i_2_n_2 ,\counter_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[15]_i_2_O_UNCONNECTED [3],data0[15:13]}),
        .S({1'b0,counter[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(counter[1]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(counter[2]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(counter[3]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(counter[4]),
        .R(E));
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(counter[5]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(counter[6]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(counter[7]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(counter[8]),
        .R(E));
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(counter[9]),
        .R(E));
endmodule

module pos_detect
   (go_reg,
    sys_rst_n_IBUF,
    go_reg_0,
    D,
    sys_clk_IBUF_BUFG);
  output go_reg;
  input sys_rst_n_IBUF;
  input go_reg_0;
  input [0:0]D;
  input sys_clk_IBUF_BUFG;

  wire [0:0]D;
  wire \Q_reg_n_0_[0] ;
  wire go_reg;
  wire go_reg_0;
  wire p_1_in;
  wire sys_clk_IBUF_BUFG;
  wire sys_rst_n_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(p_1_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBB4F)) 
    go_i_1
       (.I0(\Q_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(sys_rst_n_IBUF),
        .I3(go_reg_0),
        .O(go_reg));
endmodule

module x7seg
   (a_to_g_OBUF,
    Q,
    E,
    CLK,
    bcd,
    \bbstub_bcd[7] );
  output [6:0]a_to_g_OBUF;
  output [3:0]Q;
  input [0:0]E;
  input CLK;
  input [7:0]bcd;
  input [7:0]\bbstub_bcd[7] ;

  wire CLK;
  wire [0:0]E;
  wire [3:0]Q;
  wire [6:0]a_to_g_OBUF;
  wire \an[0]_i_1_n_0 ;
  wire \an[1]_i_1_n_0 ;
  wire \an[2]_i_1_n_0 ;
  wire \an[3]_i_1_n_0 ;
  wire [7:0]\bbstub_bcd[7] ;
  wire [7:0]bcd;
  wire [1:0]i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire [3:0]in;
  wire \in[0]_i_1_n_0 ;
  wire \in[1]_i_1_n_0 ;
  wire \in[2]_i_1_n_0 ;
  wire \in[3]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \an[0]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\an[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \an[1]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\an[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \an[2]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\an[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \an[3]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\an[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\an[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\an[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\an[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\an[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i[0]),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \in[0]_i_1 
       (.I0(bcd[0]),
        .I1(bcd[4]),
        .I2(\bbstub_bcd[7] [0]),
        .I3(i[1]),
        .I4(i[0]),
        .I5(\bbstub_bcd[7] [4]),
        .O(\in[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \in[1]_i_1 
       (.I0(bcd[1]),
        .I1(bcd[5]),
        .I2(\bbstub_bcd[7] [1]),
        .I3(i[1]),
        .I4(i[0]),
        .I5(\bbstub_bcd[7] [5]),
        .O(\in[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \in[2]_i_1 
       (.I0(bcd[2]),
        .I1(bcd[6]),
        .I2(\bbstub_bcd[7] [2]),
        .I3(i[1]),
        .I4(i[0]),
        .I5(\bbstub_bcd[7] [6]),
        .O(\in[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \in[3]_i_1 
       (.I0(bcd[3]),
        .I1(bcd[7]),
        .I2(\bbstub_bcd[7] [3]),
        .I3(i[1]),
        .I4(i[0]),
        .I5(\bbstub_bcd[7] [7]),
        .O(\in[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\in[0]_i_1_n_0 ),
        .Q(in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\in[1]_i_1_n_0 ),
        .Q(in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\in[2]_i_1_n_0 ),
        .Q(in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\in[3]_i_1_n_0 ),
        .Q(in[3]),
        .R(1'b0));
  x7seg_a x7seg_a_1
       (.Q(in),
        .a_to_g_OBUF(a_to_g_OBUF));
endmodule

module x7seg_a
   (a_to_g_OBUF,
    Q);
  output [6:0]a_to_g_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]a_to_g_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA9C)) 
    \a_to_g_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(a_to_g_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hACE8)) 
    \a_to_g_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(a_to_g_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAAB0)) 
    \a_to_g_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(a_to_g_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEA9C)) 
    \a_to_g_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(a_to_g_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    \a_to_g_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(a_to_g_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF9B8)) 
    \a_to_g_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(a_to_g_OBUF[5]));
  LUT4 #(
    .INIT(16'hEAA5)) 
    \a_to_g_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(a_to_g_OBUF[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
