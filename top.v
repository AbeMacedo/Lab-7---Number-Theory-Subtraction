// Implement top level module
module top(
    input [9:0] sw,
    output [13:0] led
);

wire con;

    half_sub cir1(
            .A(sw[0]),
            .B(sw[1]), 
            .Y(led[0]),
            .Borrow(led[1])
           );

    ones_compliment instace2(
             .A(sw[5:2]),
             .B(sw[9:6]),
             .Y(led[5:2])
           );
           
     twos_compliment instance3(
             .A(sw[9:2]),
             .Y(led[13:6])
            );

endmodule