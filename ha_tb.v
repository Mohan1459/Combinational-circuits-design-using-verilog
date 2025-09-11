module tb;
  reg a,b;
  wire sum,carry;
  ha g1(.a(a),.b(b),.sum(sum),.carry(carry));
  initial begin
    {a,b}=2'b00; #3;
    {a,b}=2'b01; #3;
    {a,b}=2'b10; #3;
    {a,b}=2'b11; #3;
    #10; $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  initial begin
    $monitor("time=%d,a=%b,b=%b,sum=%b,carry=%b",$time,a,b,sum,carry);
  end
endmodule
