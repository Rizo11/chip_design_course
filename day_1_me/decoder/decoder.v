// 2-to-4 Line Decoder
// 4 AND gates on the output
// 2x 1-to-2 Line Decoders

module decoder2to4 (
    input [1:0] A,
    output [3:0] D
);

    wire [3:0] W;

    decoder1to2 U0(.A(A[0]), .D(W[1:0]));
    decoder1to2 U1(.A(A[1]), .D(W[3:2]));

    assign D[0] = W[0] && W[2];
    assign D[1] = W[0] && W[3];
    assign D[2] = W[1] && W[2];
    assign D[3] = W[1] && W[3];

endmodule


module decoder1to2 (input A, output [1:0] D );

assign D[0] = ~A;
assign D[1] = A;

endmodule