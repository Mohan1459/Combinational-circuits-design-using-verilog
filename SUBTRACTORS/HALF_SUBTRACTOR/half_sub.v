module hs
  (
    input a,
    input b,
    output reg diff,
    output reg brr
  );
  always@(*)begin
    case({a,b})
      2'b00:begin
        diff<=1'b0;
        brr<=1'b0;
      end
      2'b01:begin
        diff<=1'b1;
        brr<=1'b1;
      end
      2'b10:begin
        diff<=1'b1;
        brr<=1'b0;
      end
      2'b11:begin
        diff<=1'b0;
        brr<=1'b0;
      end
    endcase
  end
endmodule
