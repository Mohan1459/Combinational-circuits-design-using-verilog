module dec3_8(
  input [2:0]i,
  input en,
  output [7:0] y
);
  assign y[0]=en & ~i[2] & ~i[1] & ~i[0];
  assign y[1]=en & ~i[2] & ~i[1] & i[0];
  assign y[2]=en & ~i[2] & i[1] & ~i[0];
  assign y[3]=en & ~i[2] & i[1] & i[0];
  assign y[4]=en & i[2] & ~i[1] & ~i[0];
  assign y[5]=en & i[2] & ~i[1] & i[0];
  assign y[6]=en & i[2] & i[1] & ~i[0];
  assign y[7]=en & i[2] & i[1] & i[0];
  
endmodule
module dec4_16(
  input [3:0] a,
  input enn,
  output [15:0] d
);
  wire [7:0] d0,d1;
  dec3_8 u1(.i(a[2:0]),.en(enn & ~a[3]),.y(d0));
  dec3_8 u2(.i(a[2:0]),.en(enn & a[3]),.y(d1));
  assign d = {d1,d0};
endmodule
