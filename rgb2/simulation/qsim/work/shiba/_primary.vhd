library verilog;
use verilog.vl_types.all;
entity shiba is
    port(
        \out\           : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c               : in     vl_logic_vector(31 downto 0)
    );
end shiba;
