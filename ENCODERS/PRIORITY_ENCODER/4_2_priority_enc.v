module priority_encoder_4to2 (
  input  [3:0] d,    
  output reg [1:0] y,  
  output reg valid     
);
  always @(*) begin
    casez (d)
      4'b1???: begin 
        y = 2'b11; 
        valid = 1'b1;
      end
      4'b01??: begin 
        y = 2'b10;
        valid = 1'b1;
      end
      4'b001?: begin 
        y = 2'b01; 
        valid = 1'b1; 
      end
      4'b0001: begin 
        y = 2'b00; 
        valid = 1'b1; 
      end
      default: begin 
        y = 2'b00; 
        valid = 1'b0; 
      end
    endcase
  end
endmodule
