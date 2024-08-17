`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 10:31:05
// Design Name: 
// Module Name: test
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


module Project_tb;

    logic clk;
    logic reset;
    logic go;
    logic [1:0] a0, a1, b0, b1;
    logic alarm;

    Project dut (
        .clk(clk),
        .reset(reset),
        .go(go),
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .alarm(alarm)
    );

    initial begin
        clk = 0;
        forever #20 clk = ~clk; // 25 MHz clock
    end

    initial begin
        go = 0;
        a0 = 0;
        a1 = 0;
        b0 = 1;
        b1 = 1;
        reset = 1;

        #10 reset = 0;

        #90 go = 1;
        #50 go = 0;

        #200 $finish;
    end

endmodule
