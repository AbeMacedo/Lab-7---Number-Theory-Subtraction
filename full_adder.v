// Implement module called full_adder
module full_adder(
    input A, B, Cin,
    output Y,
    output Cout
);

    // Enter logic equation here
    
    assign Y = A ^ B ^ Cin;
    assign Cout = (B & Cin) | (A & B) | (A & Cin);

endmodule