library verilog;
use verilog.vl_types.all;
entity converterRGB is
    port(
        clk             : in     vl_logic;
        R               : in     vl_logic_vector(31 downto 0);
        G               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        Cr              : out    vl_logic_vector(31 downto 0);
        Cb              : out    vl_logic_vector(31 downto 0);
        Y               : out    vl_logic_vector(31 downto 0);
        nhan1           : out    vl_logic_vector(31 downto 0);
        nhan2           : out    vl_logic_vector(31 downto 0);
        nhan3           : out    vl_logic_vector(31 downto 0);
        done1           : out    vl_logic;
        done2           : out    vl_logic;
        done3           : out    vl_logic;
        done4           : out    vl_logic;
        tru1            : out    vl_logic_vector(31 downto 0);
        nhan4           : out    vl_logic_vector(31 downto 0)
    );
end converterRGB;
