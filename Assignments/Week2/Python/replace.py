with open("Verilog.txt", "r") as f:
    lines = f.readlines()
with open("Verilog.txt", "w") as f:
    for line in lines:
        if line.strip("\n") != "x0000000000000000000000000000000":
            f.write(line)