library verilog;
use verilog.vl_types.all;
entity Multiplication_24bit is
    port(
        MantissasA      : in     vl_logic_vector(22 downto 0);
        MantissasB      : in     vl_logic_vector(22 downto 0);
        outmul          : out    vl_logic_vector(22 downto 0);
        signalout       : out    vl_logic_vector(5 downto 0)
    );
end Multiplication_24bit;
