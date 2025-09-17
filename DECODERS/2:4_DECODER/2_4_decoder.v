module dec2_4(
  input  [1:0]i,    
  output reg [3:0]y
);
  always@(*)begin
    case(i)
     2'b00:begin
       y=4'b0001;
     end
      2'b01:begin
        y=4'b0010;
      end
      2'b10:begin
        y=4'b0100;
      end
      2'b11:begin
        y=4'b1000;
      end
      default:begin
        y=4'b0000;
      end
    endcase
  end
endmodule
