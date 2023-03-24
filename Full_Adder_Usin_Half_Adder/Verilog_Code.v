`timescale 1ns / 1ps
// Full Adder Using Half Adders With Module Instantiation
module HA(
    input a,b,
    output reg sum1,cout1
    );
always@(*)
begin
    sum1 <= a^b;
    cout1 <= a&b;
end
endmodule

module FA_using_HA(
    input a,b,cin,
    output sum,cout
    );
    wire sum1,cout1,cout2;
    
    HA HA0(a,b,sum1,cout1);
    HA HA1(sum1,cin,sum,cout2);
    assign cout = cout1 | cout2;
endmodule
