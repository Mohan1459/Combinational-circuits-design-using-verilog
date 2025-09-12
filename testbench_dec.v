module tb;
  reg [1:0]i;
  wire [3:0] y;
  dec2_4 dut (.i(i), .y(y));

  initial begin
    $monitor("time=%0t i=%b -> y=%b", $time, i, y);

    i = 2'b00; #10;  
    i = 2'b01; #10;  
    i = 2'b10; #10;  
    i = 2'b11; #10;   
    $finish;
  end
endmodule
