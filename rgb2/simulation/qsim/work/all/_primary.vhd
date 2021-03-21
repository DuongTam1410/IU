library verilog;
use verilog.vl_types.all;
entity \all\ is
    port(
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end \all\;
