module ALU_tb;

  reg [3:0] A, B;
  reg s0, s1;

  wire [4:0] Out;

  ALU uut(
    .A(A),
    .B(B),
    .s0(s0),
    .s1(s1),
    .Out(Out)
  );

  initial begin
    $dumpfile("ALU.vcd");
    $dumpvars(0,ALU_tb);
    // Test case 1: Addition
    A = 4'b0010;
    B = 4'b0011;
    s0 = 0;
    s1 = 0;
    #10;
    A = 4'b1010;
    B = 4'b0011;
    s0 = 0;
    s1 = 0;
    #10;
    A = 4'b0010;
    B = 4'b0001;
    s0 = 0;
    s1 = 0;
    #10;
    A = 4'b0010;
    B = 4'b1111;
    s0 = 0;
    s1 = 0;
    #10;

    // Test case 2: Subtraction
    A = 4'b1010;
    B = 4'b0011;
    s0 = 1;
    s1 = 0;
    #10;
    A = 4'b0011;
    B = 4'b1010;
    s0 = 1;
    s1 = 0;
    #10;
    A = 4'b1010;
    B = 4'b0111;
    s0 = 1;
    s1 = 0;
    #10;
    A = 4'b0111;
    B = 4'b1010;
    s0 = 1;
    s1 = 0;
    #10;
    

    // Test case 3: Comparison
    A = 4'b0100;
    B = 4'b0011;
    s0 = 0;
    s1 = 1;
    #10;
    A = 4'b0100;
    B = 4'b0100;
    s0 = 0;
    s1 = 1;
    #10;
    A = 4'b0011;
    B = 4'b0100;
    s0 = 0;
    s1 = 1;
    #10;
    

    // Test case 4: Logical AND
    A = 4'b1100;
    B = 4'b1010;
    s0 = 1;
    s1 = 1;
    #10;
    A = 4'b1101;
    B = 4'b1010;
    s0 = 1;
    s1 = 1;
    #10;
    A = 4'b1100;
    B = 4'b1110;
    s0 = 1;
    s1 = 1;
    #10;
    A = 4'b1000;
    B = 4'b1010;
    s0 = 1;
    s1 = 1;
    #10;
    

    $finish;
  end

endmodule
