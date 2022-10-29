module greater_than (
    input [1:0] A,
    input [1:0] B,
    output F
);
    // method-1
    // assign F = A > B;


    // method-2
    assign F = A[1] & ~B[1] | A[1] & A[0] & ~ B[0] | A[0] & ~B[1] & ~B[0];

endmodule
