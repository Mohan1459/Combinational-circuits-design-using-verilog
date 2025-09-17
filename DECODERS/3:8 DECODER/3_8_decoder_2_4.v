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
module dec3_8(
  input [2:0] a,
  input enn,
  output [7:0] d
);
  wire [3:0] d0, d1;
  dec2_4 u1 (
    .i(a[1:0]),
    .en(enn & ~a[2]),
    .y(d0)
  );
  dec2_4 u2 (
    .i(a[1:0]),
    .en(enn & a[2]),
    .y(d1)
  );
  assign d = {d1, d0};
endmodule
