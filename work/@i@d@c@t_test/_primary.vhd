library verilog;
use verilog.vl_types.all;
entity IDCT_test is
    port(
        d_in_1          : in     vl_logic_vector(7 downto 0);
        d_in_2          : in     vl_logic_vector(7 downto 0);
        d_in_3          : in     vl_logic_vector(7 downto 0);
        d_in_4          : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        d_out           : out    vl_logic_vector(7 downto 0)
    );
end IDCT_test;
