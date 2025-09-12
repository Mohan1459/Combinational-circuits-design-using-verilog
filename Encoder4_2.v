module enc_4_2(
  input [3:0]i,
  output reg [1:0]y
);
  always@(*)begin
    y<=2'b00;
    case(i)
      4'b0001:begin
        y[0]<=1'b0;
        y[1]<=1'b0;
      end
      4'b0010:begin
        y[0]<=1'b1;
        y[1]<=1'b0;
      end
      4'b0100:begin
        y[0]<=1'b0;
        y[1]<=1'b1;
      end
      4'b1000:begin
        y[0]<=1'b1;
        y[1]<=1'b1;
      end
    endcase
  end
endmodule
