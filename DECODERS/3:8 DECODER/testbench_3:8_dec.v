module tb;
  reg [2:0] a;
  reg enn;
  wire [7:0] d;

  // Instantiate DUT
  dec3_8 uut (
    .a(a),
    .enn(enn),
    .d(d)
  );

  initial begin
    $dumpfile("dec3_8.vcd");
    $dumpvars(0, tb_dec3_8);

    enn = 1;   // enable decoder
    a = 3'b000; #5;
    a = 3'b001; #5;
    a = 3'b010; #5;
    a = 3'b011; #5;
    a = 3'b100; #5;
    a = 3'b101; #5;
    a = 3'b110; #5;
    a = 3'b111; #5;

    enn = 0;   // disable decoder (all outputs should be 0)
    a = 3'b011; #5;

    $finish;
  end

  initial begin
    $monitor("time=%0t, enn=%b, a=%b, d=%b", $time, enn, a, d);
  end
endmodule
