module enc8_3 (
  input  [7:0]i,    
  output reg [2:0]y
);
  always@(*)begin
    case(i)
      8'b00000001:begin
        y=3'b000;
      end
      8'b00000010:begin
        y=3'b001;
      end
      8'b00000100:begin
        y=3'b010;
      end
      8'b00001000:begin
        y=3'b011;
      end
      8'b00010000:begin
        y=3'b100;
      end
      8'b00100000:begin
        y=3'b101;
      end
      8'b01000000:begin
        y=3'b110;
      end
      8'b10000000:begin
        y=3'b111;
      end
      default:begin
        y=3'b000;
      end
    endcase
  end
endmodule
