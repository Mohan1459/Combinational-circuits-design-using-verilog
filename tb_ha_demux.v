module tb;
  reg I;
  reg s0,s1;
  wire y0,y1,y2,y3;
  wire sum,carry;
  demux g1(.I(I),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.sum(sum),.carry(carry));
  initial begin
    {I,s0,s1}=3'b000;
    {I,s0,s1}=3'b001;
    {I,s0,s1}=3'b010;
    {I,s0,s1}=3'b011;#5;
    {I,s0,s1}=3'b100;#5;
    {I,s0,s1}=3'b101;#5;
    {I,s0,s1}=3'b110;#5;
    {I,s0,s1}=3'b111;#5;
    #30; $finish;
  end
  initial begin
    $monitor("time=%d,input=%b,sel0=%b,sel1=%b,y0=%b,y1=%b,y2=%b,y3=%b,sum=%b,carry=%b",$time,I,s0,s1,y0,y1,y2,y3,sum,carry);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
