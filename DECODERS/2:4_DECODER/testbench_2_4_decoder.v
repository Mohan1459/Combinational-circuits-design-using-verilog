module tb;
  reg [1:0]i;
  wire [3:0]y;
  dec2_4 g1(.i(i),.y(y));
  initial begin
    i=2'b00;#5;
    i=2'b01;#5;
    i=2'b10;#5;
    i=2'b11;#5;
  end
  initial begin
    $monitor("time=%d,input=%b,output=%b",$time,i,y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule
