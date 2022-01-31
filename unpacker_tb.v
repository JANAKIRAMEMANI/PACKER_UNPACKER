module tb;
reg clk,rst;
reg [3:0] address;
reg [31:0] a;
wire [127:0] b;

unpacker p1 (clk,rst,a,b,address);

always #5 clk = ~clk;
initial begin
clk = 0; rst = 1;
#10 rst = 0;
#10 address = 4'h0; a = $random;
#10 address = 4'h4; a = $random;
#10 address = 4'h8; a = $random;
#10 address = 4'hC; a = $random;  
//#10 {a,address} = $random;
end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end

initial #80 $stop;

endmodule
