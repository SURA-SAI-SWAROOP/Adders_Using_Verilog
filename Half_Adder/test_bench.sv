`timescale 1ns / 1ps

module half_adder_tb();
    reg a,b;
    wire sum,cout;
    
half_adder uut(a,b,sum,cout);
initial begin
    a=0; b=0;
end
initial begin
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 a=1; b=0;
    #10 a=0; b=1;
    #10 a=0; b=0;    

    #200 $finish;
end
endmodule
