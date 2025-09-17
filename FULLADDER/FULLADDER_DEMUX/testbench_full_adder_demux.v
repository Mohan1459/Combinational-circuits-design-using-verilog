module tb;
  reg I;
  reg [2:0]s;
  wire [7:0]y;
  wire sum,carry;
  demux_1_8 g1(.I(I),.s(s),.y(y),.sum(sum),.carry(carry));
  initial begin
    s=3'b000; I=0;
    s=3'b001; I=1;
    s=3'b010;  I=0; #5;
    s=3'b011; I=1; #5;
    s=3'b100;  I=0;#5;
    s=3'b101;  I=1;#5;
    s=3'b110;I=0; #5;
    s=3'b111;I=1; #5;
    #30; $finish;
  end
  initial begin
    $monitor("time=%d,input=%b,selection_line=%b,output=%b,sum=%b,carry=%b",$time,I,s,y,sum,carry);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
