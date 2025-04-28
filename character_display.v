module character_display(out1,A);
input [4:0]A;
output [0:6]out1;

display_c c1(out1,A); // A program to display characters based on the given input

endmodule