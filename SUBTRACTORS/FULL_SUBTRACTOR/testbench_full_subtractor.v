module tb;
  reg a;
  reg b;
  reg c;
  wire diff;
  wire brr;
  fs g1(.a(a),.b(b),.c(c),.diff(diff),.brr(brr));
  initial begin
    {a,b,c}=3'b000;
    {a,b,c}=3'b001;#5;
    {a,b,c}=3'b010;#5;
    {a,b,c}=3'b011;#5;
    {a,b,c}=3'b100;#5;
    {a,b,c}=3'b101;#5;
    {a,b,c}=3'b110;#5;
    {a,b,c}=3'b111;#5;
    #30; $finish;
  end
  initial begin
    $monitor("time=%d,a=%b,b=%b,c=%b,difference=%b,borrow=%b",$time,a,b,c,diff,brr);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule
