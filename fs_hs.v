module hs
  (
    input a,
    input b,
    output  d0,
    output  bo
  );
  assign d0=a^b;
  assign bo=(~a)& b;
endmodule

module fs(
  input a,
  input b,
  input bin,
  output diff,
  output brr
);
  wire d1,b1,b2; 
  hs g1(.a(a),.b(b),.d0(d1),.bo(b1));
  hs g2(.a(d1),.b(bin),.d0(diff),.bo(b2));
  assign brr=b1|b2;
endmodule
