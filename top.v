module top(
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0] led
);

wire [1:0] part1_buttons;
wire [1:0] part2_buttons;
wire [3:0] data_connector;

assign part1_buttons = {btnU, btnL};
assign part2_buttons = {btnR, btnD};

part1 part1Inst(
    .CEO(sw[3:0]),
    .Yours(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .Switch(part1_buttons),
    .Enable(btnC),
    .Out(data_connector)
);

part2 part2Inst(
    .In(data_connector),
    .Switch(part2_buttons),
    .Enable(btnC),
    .local_lib(led[3:0]),
    .local_fd(led[7:4]),
    .local_school(led[11:8]),
    .local_rib(led[15:12])
);

endmodule