`timescale 1ns / 1ps

module FA(
    input a,b,cin,
    output reg sum,cout
    );
always@(*)
begin
    sum <= a ^ b ^ cin;
    cout <= (a&b)|(b&cin)|(cin&a); 
end
endmodule

module ripple_carry_adder(
    input [3:0] A,B,
    input cin,
    output [3:0] sum,
    output cout,
    output [4:0] finalsum
    );
    wire [2:0] carry;
FA FA0(A[0],B[0],cin,sum[0],carry[0]);
FA FA1(A[1],B[1],carry[0],sum[1],carry[1]);
FA FA2(A[2],B[2],carry[1],sum[2],carry[2]);
FA FA3(A[3],B[3],carry[2],sum[3],cout);

assign finalsum = {cout,sum};
endmodule
