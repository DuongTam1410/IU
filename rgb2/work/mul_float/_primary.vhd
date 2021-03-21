library verilog;
use verilog.vl_types.all;
entity mul_float is
    port(
        ina             : in     vl_logic_vector(31 downto 0);
        inb             : in     vl_logic_vector(31 downto 0);
        out2            : out    vl_logic_vector(31 downto 0)
    );
end mul_float;
