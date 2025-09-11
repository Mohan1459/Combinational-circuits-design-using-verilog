module tb;
  reg [3:0]a;
  reg [3:0]b;
  reg ci;
  wire [3:0]sum;
  wire cout;
  RCA g4(.a(a),.b(b),.ci(ci),.sum(sum),.cout(cout));
  initial begin
    {a,b,ci}=7'd1; #3;
    {a,b,ci}=7'd2; #3;
    {a,b,ci}=7'd3; #3;
    {a,b,ci}=7'd4; #3;
    {a,b,ci}=7'd5; #3;
    {a,b,ci}=7'd6; #3;
    {a,b,ci}=7'd7; #3;
    {a,b,ci}=7'd8; #3;
    #20; $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  initial begin
    $monitor("time=%d,a=%d,b=%d,ci=%b,sum=%b,carry=%b",$time,a,b,ci,sum,cout);
  end
endmodule
