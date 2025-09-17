module tb_priority_encoder_4to2;
  reg [3:0] d;
  wire [1:0] y;
  wire valid;
  priority_encoder_4to2 dut (.d(d), .y(y), .valid(valid));

  initial begin
    $monitor("time=%0t d=%b -> y=%b valid=%b", $time, d, y, valid);

    d = 4'b0000; #10;  
    d = 4'b0001; #10;  
    d = 4'b0010; #10;  
    d = 4'b0100; #10; 
    d = 4'b1000; #10;  
    d = 4'b1110; #10;  

    $finish;
  end
endmodule
