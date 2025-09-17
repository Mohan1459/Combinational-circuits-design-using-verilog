module tb;
  reg a,b;
  wire diff,brr;
  hs g3(.a(a),.b(b),.diff(diff),.brr(brr));
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
    $monitor("time=%d,a=%b,b=%b,differnce=%b,borrow=%b",$time,a,b,diff,brr);
  end
endmodule
