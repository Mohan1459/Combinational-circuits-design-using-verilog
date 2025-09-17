module demux_1_8(
  input I,
  input [2:0]s,
  output reg [7:0]y
  output sum,
  output carry
);
  always@(*)begin
    y<=8'b00000000;
    case(s)
      3'b000:begin
        y[0]=I;
      end
      3'b001:begin
        y[1]=I;
      end
      3'b010:begin
        y[2]=I;
      end
      3'b011:begin
        y[3]=I;
      end
      3'b100:begin
        y[4]=I;
      end
      3'b101:begin
        y[5]=I;
      end
      3'b110:begin
        y[6]=I;
      end
      3'b111:begin
        y[7]=I;
      end
    endcase
  end
  assign sum=y[1]|y[2]|y[4]|y[7];
  assign carry=y[3]|y[5]|y[6]|y[7];
endmodule
