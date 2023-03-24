`timescale 1ns / 1ps

module carry_look_ahead_adder_tb();
    reg [3:0] A,B;
    reg cin;
    wire [3:0] s,c;
    wire [4:0] finalsum;
    
carry_look_ahead_adder uut(A,B,cin,s,c,finalsum);
initial begin
    A=4'd0; B=4'd0; cin=0;
    
    #10 A=4'd2; B=4'd3;
    #10 A=4'd5; B=4'd6;
    #10 A=4'd7; B=4'd9;
    #10 A=4'd10; B=4'd11;
    #10 A=4'd12; B=4'd15;
    #10 A=4'd1; B=4'd2;
    #10 A=4'd13; B=4'd13;
    #10 A=4'd6; B=4'd9;
    #10 A=4'd3; B=4'd3;
    #10 A=4'd12; B=4'd13;
    #10 A=4'd0; B=4'd0;
    
    #30 $finish;
end
endmodule
