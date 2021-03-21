library verilog;
use verilog.vl_types.all;
entity IMEM_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end IMEM_vlg_sample_tst;
