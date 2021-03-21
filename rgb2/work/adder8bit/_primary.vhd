library verilog;
use verilog.vl_types.all;
entity adder8bit is
    port(
        ExponentA       : in     vl_logic_vector(7 downto 0);
        ExponentB       : in     vl_logic_vector(7 downto 0);
        OutAdder        : out    vl_logic_vector(7 downto 0);
        \signal\        : in     vl_logic_vector(5 downto 0)
    );
end adder8bit;
