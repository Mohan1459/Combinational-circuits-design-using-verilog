module tb_priority_encoder_4to2;
  reg [7:0]i;
  wire [2:0] y;
  enc8_3 dut (.i(i), .y(y));

  initial begin
    $monitor("time=%0t i=%b -> y=%b", $time, i, y);

    i = 8'b00000000; #10;  
    i = 8'b00000001; #10;  
    i = 8'b00000010; #10;  
    i = 8'b00000100; #10; 
    i = 8'b00001000; #10;  
    i = 8'b00010000; #10;
    i = 8'b00100000; #10;  
    i = 8'b01000000; #10;  
    i = 8'b10000000; #10;  

    $finish;
  end
endmodule
