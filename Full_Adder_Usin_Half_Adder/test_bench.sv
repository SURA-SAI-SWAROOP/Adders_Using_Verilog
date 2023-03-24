`timescale 1ns / 1ps

module FA_using_HA_tb();
    reg a,b,cin;
    wire sum,cout;
    
FA_using_HA uut(a,b,cin,sum,cout);

initial begin
    a=0; b=0; cin=0;
    
    #10 a=0; b=0; cin=1;
    #10 a=0; b=1; cin=0;
    #10 a=0; b=1; cin=1;
    #10 a=1; b=0; cin=0;
    #10 a=1; b=0; cin=1;
    #10 a=0; b=0; cin=0;
    #10 a=1; b=1; cin=0;
    #10 a=1; b=1; cin=1;
    #10 a=0; b=0; cin=0;
    #10 a=0; b=0; cin=1;
    
    #30 $finish;
end
endmodule
