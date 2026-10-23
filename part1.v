module part1(
    input [3:0] CEO,
    input [3:0] Yours,
    input [3:0] Fred,
    input [3:0] Jill,
    input [1:0] Switch,
    input Enable,
    output [3:0] Out
);

    assign is_CEO = ~Switch[1] && ~Switch[0];
    assign is_Yours = ~Switch[1] && Switch[0];
    assign is_Fred = Switch[1] && ~Switch[0];
    assign is_Jill = Switch[1] && Switch[0];

    assign Out = (is_CEO && Enable) ? CEO :
                 (is_Yours && Enable) ? Yours :
                 (is_Fred && Enable) ? Fred :
                 (is_Jill && Enable) ? Jill : 0;

endmodule