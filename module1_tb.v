`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2020 08:13:53 PM
// Design Name: 
// Module Name: module1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module module1_tb( );

reg clk;
reg rst;
reg enable;
wire scl;
wire [31:0]unique1;
wire [31:0]unique2;
wire [7:0]vtg;
wire sda;
reg SDA;
reg direction=0;
//assign sda=direction?SDA:1'bz;

module1 m1(clk,rst,enable,scl,unique1,unique2,vtg,sda);

initial
clk=1'b1;

always
#5 clk=~clk;

initial 
begin
rst=1;
#15 rst=0;
#10 enable=1;

#500 $finish;
end

endmodule
