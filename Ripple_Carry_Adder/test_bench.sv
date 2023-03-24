`timescale 1ns / 1ps

module ripple_carry_adder_tb();
    
    reg [3:0] A,B;
    reg cin;
    wire [3:0] sum;
    wire cout;
    wire [4:0] finalsum;
    
ripple_carry_adder uut(A,B,cin,sum,cout,finalsum);
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
