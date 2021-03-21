library verilog;
use verilog.vl_types.all;
entity shiba_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end shiba_vlg_check_tst;
