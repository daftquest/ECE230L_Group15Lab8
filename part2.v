module part2(
    input [3:0] In,
    input [1:0] Switch,
    input Enable,
    output [3:0] local_lib,
    output [3:0] local_fd,
    output [3:0] local_school,
    output [3:0] local_rib
);

    assign is_Lib = ~Switch[1] && ~Switch[0];
    assign is_FD = ~Switch[1] && Switch[0];
    assign is_School = Switch[1] && ~Switch[0];
    assign is_Rib = Switch[1] && Switch[0];

    assign local_lib = ((is_Lib && Enable) ? In : 0);
    assign local_fd = ((is_FD && Enable) ? In : 0);
    assign local_school = ((is_School && Enable) ? In : 0);
    assign local_rib = ((is_Rib && Enable) ? In : 0);

endmodule