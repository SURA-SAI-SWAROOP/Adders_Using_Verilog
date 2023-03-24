`timescale 1ns / 1ps

module carry_look_ahead_adder(
    input [3:0] A,B,
    input cin,
    output [3:0] s,
    output [3:0] c,
    output [4:0] finalsum //final sum is the result which includes carry out bit with the sum bits
    );
    wire [3:0] g,p;
    assign g = A&B;
    assign p = A^B;
    assign c[0] = g[0]|(cin&p[0]);
    assign c[1] = g[1]|(g[0]&p[1])|(cin&p[0]&p[1]);
    assign c[2] = g[2]|(g[1]&p[2])|(g[0]&p[1]&p[2])|(cin&p[0]&p[1]&p[2]);
    assign c[3] = g[3]|(g[2]&p[3])|(g[1]&p[2]&p[3])|(g[0]&p[1]&p[2]&p[3])|(cin&p[0]&p[1]&p[2]&p[3]);
    
    assign s[0] = cin^p[0];
    assign s[3:1] = c[2:0]^p[3:1]; 
    
    assign finalsum = {c[3],s[3:0]};    
endmodule
