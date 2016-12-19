import sys

f1 = open (sys.argv[1])
f2 = open (sys.argv[2])
f3 = open (sys.argv[3])
output = open (sys.argv[4], 'w+')

lines1 = f1.readlines()
lines2 = f2.readlines()
lines3 = f3.readlines()

f1len = len(lines1)
f2len = len(lines2)
f3len = len(lines3)

shortestFileLength = min(min(f1len, f2len), f3len)

# Write header
output.write(lines1[0])

for index in range(1, shortestFileLength, 1):
    l1 = lines1[index].split('\t')
    l2 = lines2[index].split('\t')
    l3 = lines3[index].split('\t')
    
    output.write(str(index) + '\t')
    for value in range(1, len(l1), 1):
        v1 = float(l1[value].replace(',', ''))
        v2 = float(l2[value].replace(',', ''))
        v3 = float(l3[value].replace(',', ''))
        val = (v1 + v2 + v3) / 3
        output.write(str(val) + '\t')
    output.write('\n')

f1.close()
f2.close()
f3.close()
output.close()