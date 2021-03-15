library verilog;
use verilog.vl_types.all;
entity converterRGB_vlg_check_tst is
    port(
        Cb              : in     vl_logic_vector(31 downto 0);
        Cr              : in     vl_logic_vector(31 downto 0);
        Y               : in     vl_logic_vector(31 downto 0);
        done1           : in     vl_logic;
        done2           : in     vl_logic;
        done3           : in     vl_logic;
        done4           : in     vl_logic;
        nhan1           : in     vl_logic_vector(31 downto 0);
        nhan2           : in     vl_logic_vector(31 downto 0);
        nhan3           : in     vl_logic_vector(31 downto 0);
        nhan4           : in     vl_logic_vector(31 downto 0);
        tru1            : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end converterRGB_vlg_check_tst;
