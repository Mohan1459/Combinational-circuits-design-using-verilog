module com(
  input [1:0]a,
  input [1:0]b,
  output reg o1,
  output reg o2,
  output reg o3
);
  always@(*)begin
    if(a>b)begin
    o1=1'b1;
    o2=1'b0;
    o3=1'b0;
    end
    if(a<b)begin
      o1=1'b0;
      o2=1'b1;
      o3=1'b0;
    end
    if(a==b)begin
      o1=1'b0;
      o2=1'b0;
      o3=1'b1;
    end
  end
endmodule
