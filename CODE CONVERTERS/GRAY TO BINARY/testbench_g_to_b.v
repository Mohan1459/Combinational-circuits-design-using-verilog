module tb;
  reg [3:0]g;
  wire [3:0]b;
  gray_to_binary g1(.b(b),.g(g));
  initial begin
    g=4'b0000;#5;
    g=4'b0001;#5;
    g=4'b0010;#5;
    g=4'b0011;#5;
    g=4'b0100;#5;
    g=4'b0101;#5;
    g=4'b0110;#5;
    g=4'b0111;#5;
    g=4'b1000;#5;
    g=4'b1001;#5;
    g=4'b1010;#5;
    g=4'b1011;#5;
    g=4'b1100;#5;
    g=4'b1101;#5;
    g=4'b1110;#5;
    g=4'b1111;#5;
  $finish;
  end
  initial begin
    $monitor("time=%d,input_binary=%b,output_gray=%b",$time,g,b);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
