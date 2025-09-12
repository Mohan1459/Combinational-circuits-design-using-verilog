module ha_demux(
  input I,
  input s0,
  input s1,
  output reg y0,
  output reg y1,
  output reg y2,
  output reg y3,
  output sum,
  output carry
);
  always@(*)begin
    y0=0;
    y1=0;
    y2=0;
    y3=0;
    case({s0,s1})
      2'b00:begin
        y0<=I;
      end
      2'b01:begin
        y1<=I;
      end
      2'b10:begin
        y2<=I;
      end
      2'b11:begin
        y3<=I;
      end
      default:begin
        y0=0;
        y1=0;
        y2=0;
        y3=0;
      end
    endcase
  end
  assign sum = y1|y2;
  assign carry=y3;
endmodule
