module ha(
  input a,
  input b,
  output reg s,
  output reg co
);
  assign s= a^b;
  assign co=a&b;
endmodule

module fa(
  input a,
  input b,
  input ci,
  output sum,
  output carry
);
  wire s1;
  wire c0;
  wire c1;
  ha g1(.a(a),.b(b),.s1(s),.c0(co));
  ha g2(.s1(a),.ci(b),.sum(s1));
  assign carry=c0|c1;
endmodule
