library verilog;
use verilog.vl_types.all;
entity all2 is
    port(
        clk             : in     vl_logic;
        r               : in     vl_logic_vector(31 downto 0);
        g               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end all2;
