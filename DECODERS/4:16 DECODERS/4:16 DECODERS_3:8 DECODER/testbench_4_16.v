module tb_dec3_8;
  reg [3:0] a;
  reg enn;
  wire [15:0] d;

  // Instantiate DUT
  dec4_16 uut (
    .a(a),
    .enn(enn),
    .d(d)
  );

  initial begin
    $dumpfile("dec3_8.vcd");
    $dumpvars(0, tb_dec3_8);

    enn = 1;   // enable decoder
    a = 4'b0000; #5;
    a = 4'b0001; #5;
    a = 4'b0010; #5;
    a = 4'b0011; #5;
    a = 4'b0100; #5;
    a = 4'b0101; #5;
    a = 4'b0110; #5;
    a = 4'b0111; #5;
    a = 4'b1000; #5;
    a = 4'b1001; #5;
    a = 4'b1010; #5;
    a = 4'b1011; #5;
    a = 4'b1100; #5;
    a = 4'b1101; #5;
    a = 4'b1110; #5;
    a = 4'b1111; #5;
    $finish;
  end

  initial begin
    $monitor("time=%0t, enn=%b, a=%b, d=%b", $time, enn, a, d);
  end
endmodule
