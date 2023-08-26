module CONTROL(
    input [6:0] funct7,
    input [2:0] funct3,
    input [6:0] opcode,
    output reg [3:0] alu_control,
    output reg regwrite_control
);
    always @(*)
    begin
        if (opcode == 7'b0110011) begin // R-type instructions

            regwrite_control = 1;

            if(funct3==0)
                begin
                    if(funct7 == 0)
                    alu_control = 4'b0010; // ADD
                    else if(funct7 == 32)
                    alu_control = 4'b0100; // SUB
                end
             else if(funct3==6) alu_control = 4'b0001; // OR
               else if(funct3==7) alu_control = 4'b0000; // AND
               else if(funct3==1) alu_control = 4'b0011; // SLL
               else if(funct3==5) alu_control = 4'b0101; // SRL
		else if(funct3==2) alu_control = 4'b0110; // MUL
		else if(funct3==4) alu_control = 4'b0111; // XOR


      end

    end

endmodule
