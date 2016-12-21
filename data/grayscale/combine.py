log1 = open ('log-1-8.txt')
log2 = open ('log-8-102.txt')
output = open ('grayscale.dat', 'w+')

lines1 = log1.readlines()
lines2 = log2.readlines()

for i in range(0, len(lines1), 1):
    output.write(lines1[i])

for i in range(1, len(lines2), 1):
    line = lines2[i]
    arr = line.split()
    arr[0] = str(int(arr[0]) + len(lines1) - 1)
    output.write('\t'.join(arr) + '\n')