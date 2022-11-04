module cnt_60(
    clk,
    Rst_n,
    q,
    co
);
input  clk,Rst_n;
output reg [5:0]q;
output reg co;
//counter 60
always @(posedge clk or negedge Rst_n) begin
    if (!Rst_n) begin
        q <= 1'b0;
        co <= 1'b0;
    end
    else if (q == 6'd59)
        q <= 1'b0;
    else
        q <= 1'b1 +q;

    
end



endmodule