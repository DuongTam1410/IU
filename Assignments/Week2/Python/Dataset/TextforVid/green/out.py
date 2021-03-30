filenames = ['green0.txt', 'green1.txt', 'green2.txt', 'green3.txt', 'green4.txt' ,'green5.txt','green6.txt','green7.txt','green8.txt','green9.txt','green10.txt','green11.txt','green12.txt','green13.txt','green14.txt','green15.txt','green16.txt','green17.txt','green18.txt','green19.txt','green20.txt','green21.txt','green22.txt','green23.txt','green23.txt']
with open('output.txt', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)