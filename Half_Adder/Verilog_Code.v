`timescale 1ns / 1ps

module half_adder(
    input a,b,
    output reg sum,cout
);
always@(*)
begin
     sum <= a^b;
     cout <= a&b;
end
endmodule
