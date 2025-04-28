module character_display_tb;
reg [4:0]A;
wire [6:0]out1;

character_display c1(out1,A);

initial
begin
A = 5'd0;#10;
A = 5'd17;#10;
A = 5'd18;#10;
end
endmodule