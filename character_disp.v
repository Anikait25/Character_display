module character_disp(out1,out2,out3,S,A);
input [4:0]A;
input S;
output [0:6]out1,out2,out3;

reg [4:0] A1=0;
reg [4:0] A2=0;
reg [4:0] A3=0;

always@(posedge S)
begin
	A1 <= A;
end

always@(posedge S)
begin
	A2 <= A1;
end

always@(posedge S)
begin
	A3 <= A2;
end
character_display c1(out1,A1);// A program to display characters in 7-segment
character_display c2(out2,A2);
character_display c3(out3,A3);

endmodule