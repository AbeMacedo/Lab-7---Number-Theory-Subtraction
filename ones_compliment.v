// Implement module called ones_compliment
module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y
);

wire [3:0] tempY, carry, carry1;

    full_adder cir1(
            .A(A[0]), 
            .B(B[0]), 
            .Cin(0),
            .Y(tempY[0]),
            .Cout(carry[0]) 
        );
        
    full_adder cir2(
            .A(A[1]), 
            .B(B[1]), 
            .Cin(carry[0]),
            .Y(tempY[1]),
            .Cout(carry[1]) 
        );
        
        full_adder cir3(
            .A(A[2]), 
            .B(B[2]), 
            .Cin(carry[1]),
            .Y(tempY[2]),
            .Cout(carry[2]) 
        );
        
        full_adder cir4(
            .A(A[3]), 
            .B(B[3]), 
            .Cin(carry[2]),
            .Y(tempY[3]),
            .Cout(carry[3]) 
        );
        


//        //Carry over
        full_adder cir5(
            .A(tempY[0]), 
            .B(carry[3]), 
            .Cin(0),
            .Y(Y[0]),
            .Cout(carry1[0]) 
        );
        
        full_adder cir6(
            .A(tempY[1]), 
            .B(0), 
            .Cin(carry1[0]),
            .Y(Y[1]),
            .Cout(carry1[1]) 
        );
        
        full_adder cir7(
            .A(tempY[2]), 
            .B(0), 
            .Cin(carry1[1]),
            .Y(Y[2]),
            .Cout(carry1[2]) 
        );
        
        full_adder cir8(
            .A(tempY[3]), 
            .B(0), 
            .Cin(carry1[2]),
            .Y(Y[3]),
            .Cout(carry1[3]) 
        );

endmodule