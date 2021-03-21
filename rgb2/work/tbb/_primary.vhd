library verilog;
use verilog.vl_types.all;
entity tbb is
    generic(
        N               : integer := 250000
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end tbb;
