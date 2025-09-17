module tb;
  reg a,b,ci;
  wire sum,carry;
  fa g3(.a(a),.b(b),.ci(ci),.sum(sum),.carry(carry));
  initial begin
    {a,b,ci}=3'b000; #3;
    {a,b,ci}=3'b001; #3;
    {a,b,ci}=3'b010; #3;
    {a,b,ci}=3'b011; #3;
    {a,b,ci}=3'b100; #3;
    {a,b,ci}=3'b101; #3;
    {a,b,ci}=3'b110; #3;
    {a,b,ci}=3'b111; #3;
    #20; $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  initial begin
    $monitor("time=%d,a=%b,b=%b,ci=%b,sum=%b,carry=%b",$time,a,b,ci,sum,carry);
  end
endmodule
