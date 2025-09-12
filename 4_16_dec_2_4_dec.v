module dec2_4(
  input [1:0] i,
  input en,
  output [3:0] y
);
  assign y[0] = en & (~i[1]) & (~i[0]);
  assign y[1] = en & (~i[1]) &  (i[0]);
  assign y[2] = en &  (i[1]) & (~i[0]);
  assign y[3] = en &  (i[1]) &  (i[0]);
endmodule
module dec4_16(
  input [3:0] a,
  input enn,
  output [15:0] d
);
  wire [3:0] d0,d1,d2,d3;
  wire [3:0]w;
  dec2_4 u1(.i(a[3:2]),.en(enn),.y(w));
  dec2_4 u2(.i(a[1:0]),.en(w[0]),.y(d0));
  dec2_4 u3(.i(a[1:0]),.en(w[1]),.y(d1));
  dec2_4 u4(.i(a[1:0]),.en(w[2]),.y(d2));
  dec2_4 u5(.i(a[1:0]),.en(w[3]),.y(d3));
  assign d = {d3,d2,d1,d0};
endmodule
