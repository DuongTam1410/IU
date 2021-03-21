library verilog;
use verilog.vl_types.all;
entity \all\ is
    port(
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(31 downto 0);
        o_itf1          : out    vl_logic_vector(31 downto 0);
        out_reg         : out    vl_logic_vector(9 downto 0);
        om1             : out    vl_logic_vector(31 downto 0);
        oc1             : out    vl_logic_vector(31 downto 0);
        itf1            : out    vl_logic_vector(7 downto 0)
    );
end \all\;
