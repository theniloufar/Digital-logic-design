module max_block(input [3:0] A, B, C, D, output [7:0] max);
    wire gt, eq, lt, gt1, eq1, lt1, gt2, eq2, lt2;

    comparator cmp1(A, B, gt1, eq1, lt1);
    comparator cmp2(C, D, gt2, eq2, lt2);

    wire [3:0] max1 = (gt1) ? A : B;
    wire [3:0] max2 = (gt2) ? C : D;

    comparator cmp3(max1, max2, gt, eq, lt);

    assign max = (gt) ? {4'b0000, max1} : {4'b0000, max2};
endmodule
