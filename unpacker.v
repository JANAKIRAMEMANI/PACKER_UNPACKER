module unpacker(clk,rst,a,b,address);
input clk,rst;
input [3:0] address;
input [31:0] a;
output [127:0] b;

reg [127:0] b;

always @ (posedge clk)
begin
	if(rst) b = 128'd0;
	else
	begin
		case(address)
			'h0:b[31:0]   <= a;
			'h4:b[63:32]  <= a;
			'h8:b[95:64]  <= a;
			'hC:b[127:96] <= a;
		default : b = 128'd0;
		endcase
	end
end
endmodule
