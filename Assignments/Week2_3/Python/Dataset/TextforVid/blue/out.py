filenames = ['blue0.txt', 'blue1.txt', 'blue2.txt', 'blue3.txt', 'blue4.txt' ,'blue5.txt','blue6.txt','blue7.txt','blue8.txt','blue9.txt','blue10.txt','blue11.txt','blue12.txt','blue13.txt','blue14.txt','blue15.txt','blue16.txt','blue17.txt','blue18.txt','blue19.txt','blue20.txt','blue21.txt','blue22.txt','blue23.txt','blue23.txt']
with open('output.txt', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)