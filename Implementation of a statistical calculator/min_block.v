module min_block(input [3:0] A, B, C, D, output [7:0] min);
    wire gt, eq, lt, gt1, eq1, lt1, gt2, eq2, lt2;

    comparator cmp1(A, B, gt1, eq1, lt1);
    comparator cmp2(C, D, gt2, eq2, lt2);

    wire [3:0] min1 = (lt1) ? A : B;
    wire [3:0] min2 = (lt2) ? C : D;

    comparator cmp3(min1, min2, gt, eq, lt);

    assign min = (lt) ? {4'b0000, min1} : {4'b0000, min2};
endmodule
