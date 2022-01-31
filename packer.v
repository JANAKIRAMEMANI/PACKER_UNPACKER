module packer(clk,rst,a,b,address);
input clk,rst;
input [3:0] address;
input [127:0] a;
output [31:0] b;

reg [31:0] b;

always @ (posedge clk)
begin
	if(rst) b = 32'd0;
	else
	begin
		case(address)
			'h0:b <= a [31:0] ;
			'h4:b <= a [63:32];
			'h8:b <= a [95:64];
			'hC:b <= a [127:96];
		default : b = 32'd0;
		endcase
	end
end
endmodule
