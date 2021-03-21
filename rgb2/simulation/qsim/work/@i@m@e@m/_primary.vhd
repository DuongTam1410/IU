library verilog;
use verilog.vl_types.all;
entity IMEM is
    port(
        addr            : in     vl_logic_vector(4 downto 0);
        q               : out    vl_logic_vector(15 downto 0)
    );
end IMEM;
