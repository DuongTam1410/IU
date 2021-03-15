library verilog;
use verilog.vl_types.all;
entity converterRGB_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(31 downto 0);
        G               : in     vl_logic_vector(31 downto 0);
        R               : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end converterRGB_vlg_sample_tst;
