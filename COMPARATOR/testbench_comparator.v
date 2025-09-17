module tb;
  reg a,b;
  wire o1,o2,o3;
  com g1(.a(a),.b(b),.o1(o1),.o2(o2),.o3(o3));
  initial begin
    {a,b}=4'b0000;#5;
    {a,b}=4'b0001;#5;
    {a,b}=4'b0010;#5;
    {a,b}=4'b0011;#5;
    {a,b}=4'b0100;#5;
    {a,b}=4'b0101;#5;
    {a,b}=4'b0110;#5;
    {a,b}=4'b0111;#5;
    {a,b}=4'b1000;#5;
    {a,b}=4'b1001;#5;
    {a,b}=4'b1010;#5;
    {a,b}=4'b1011;#5;
    {a,b}=4'b1100;#5;
    {a,b}=4'b1101;#5;
    {a,b}=4'b1110;#5;
    {a,b}=4'b1111;#5;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  initial begin
    $monitor("time=%d,a=%b,b=%b,greater_than=%b,less_than=%b,equal_to=%b",$time,a,b,o1,o2,o3);
  end
endmodule
