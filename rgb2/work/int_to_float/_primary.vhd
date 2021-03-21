library verilog;
use verilog.vl_types.all;
entity int_to_float is
    port(
        int_input       : in     vl_logic_vector(7 downto 0);
        float_output    : out    vl_logic_vector(31 downto 0)
    );
end int_to_float;
