// Implement module called half_sub
module half_sub(
    input A, B,
    output Y, Borrow
);

    // Enter logic equation here
    
    assign Y = A ^ B;
    assign Borrow =  ~A & B;

endmodule