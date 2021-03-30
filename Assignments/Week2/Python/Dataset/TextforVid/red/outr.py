filenames = ['red0.txt', 'red1.txt', 'red2.txt', 'red3.txt', 'red4.txt' ,'red5.txt','red6.txt','red7.txt','red8.txt','red9.txt','red10.txt','red11.txt','red12.txt','red13.txt','red14.txt','red15.txt','red16.txt','red17.txt','red18.txt','red19.txt','red20.txt','red21.txt','red22.txt','red23.txt','red23.txt']
with open('outputred.txt', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)