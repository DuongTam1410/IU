library verilog;
use verilog.vl_types.all;
entity IMEMG is
    port(
        addr            : in     vl_logic_vector(9 downto 0);
        q               : out    vl_logic_vector(7 downto 0)
    );
end IMEMG;
