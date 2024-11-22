/* Generated by Yosys 0.45+11 (git sha1 e8951aba29faf774e475f20c1405162993235d7f, g++ 14.2.1 -O2 -fexceptions -fstack-protector-strong -m64 -march=x86-64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -mtls-dialect=gnu2 -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer -fPIC -O3) */

(* top =  1  *)
(* generator = "Amaranth" *)
module top(target, CPSR, u_ctrl, PCOut, PCIn);
  reg \$auto$verilog_backend.cc:2352:dump_module$1  = 0;
  wire [32:0] \$1 ;
  wire \$2 ;
  wire \$3 ;
  wire \$4 ;
  wire \$5 ;
  wire \$6 ;
  wire \$7 ;
  wire \$8 ;
  input [2:0] CPSR;
  wire [2:0] CPSR;
  wire N;
  wire [31:0] PCDef;
  input [31:0] PCIn;
  wire [31:0] PCIn;
  output [31:0] PCOut;
  reg [31:0] PCOut;
  wire Z;
  input [31:0] target;
  wire [31:0] target;
  input [5:0] u_ctrl;
  wire [5:0] u_ctrl;
  assign \$2  = ~ CPSR[2];
  assign \$3  = \$2  & CPSR[1];
  assign \$4  = ~ CPSR[1];
  assign \$5  = CPSR[2] & \$4 ;
  assign \$6  = ~ CPSR[2];
  assign \$7  = ~ CPSR[1];
  assign \$8  = \$6  & \$7 ;
  assign \$1  = PCIn + 3'h4;
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    PCOut = 32'd0;
    casez (u_ctrl)
      6'h00:
          PCOut = \$1 [31:0];
      6'h01:
          PCOut = target;
      6'h02:
          (* full_case = 32'd1 *)
          if (\$3 ) begin
            PCOut = target;
          end else begin
            PCOut = \$1 [31:0];
          end
      6'h03:
          (* full_case = 32'd1 *)
          if (\$5 ) begin
            PCOut = target;
          end else begin
            PCOut = \$1 [31:0];
          end
      6'h04:
          (* full_case = 32'd1 *)
          if (\$8 ) begin
            PCOut = target;
          end else begin
            PCOut = \$1 [31:0];
          end
    endcase
  end
  assign N = CPSR[2];
  assign Z = CPSR[1];
  assign PCDef = \$1 [31:0];
endmodule

