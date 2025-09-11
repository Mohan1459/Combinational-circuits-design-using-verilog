module fs(
  input a,
  input b,
  input bin,
  output reg diff,
  output reg brr
);
  always@(*)begin
    case({a,b,bin})
      3'b000:begin
        diff<=1'b0;
        brr<=1'b0;
      end
      3'b001:begin
        diff<=1'b1;
        brr<=1'b1;
      end
      3'b010:begin
        diff<=1'b1;
        brr<=1'b1;
      end
      3'b011:begin
        diff<=1'b0;
        brr<=1'b1;
      end
      3'b100:begin
        diff<=1'b1;
        brr<=1'b0;
      end
      3'b101:begin
        diff<=1'b0;
        brr<=1'b0;
      end
      3'b110:begin
        diff<=1'b0;
        brr<=1'b0;
      end
      3'b111:begin
        diff<=1'b1;
        brr<=1'b1;
      end
      default:begin
        diff<=1'b0;
        brr<=1'b0;
      end
    endcase
  end
endmodule
