module fa(
  input a,
  input b,
  input cin,
  output so,
  output co
);
  assign so=a^b^cin;
  assign co=a&b|b&cin|cin&a; 
endmodule

module RCA(
  input [3:0]a,
  input [3:0]b,
  input      ci,
  output [3:0]sum,
  output      cout
);
  wire c1,c2,c3;
  fa g1(.a(a[0]),.b(b[0]),.cin(ci),.so(sum[0]),.co(c1));
  fa g2(.a(a[1]),.b(b[1]),.cin(c1),.so(sum[1]),.co(c2));
  fa g3(.a(a[2]),.b(b[2]),.cin(c2),.so(sum[2]),.co(c3));
  fa g4(.a(a[3]),.b(b[3]),.cin(c3),.so(sum[3]),.co(cout));
endmodule
