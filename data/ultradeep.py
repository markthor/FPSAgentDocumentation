import sys

input = open (sys.argv[1])
output = open (sys.argv[2], 'w+')
n = int(sys.argv[3])

lines = input.readlines()

output.write('iteration\tcost\n')

for i in range(0, len(lines), 8):
    cost = 0.0
    for j in range(0, 8, 1):
        if (i+j) < len(lines):
            line = lines[i+j]
            costStr = line.split()[1]
            if costStr != 'NaN':
                cost += float(costStr)
    if (i/8) % n == 0:
        output.write(str(i/8) + '\t' + str(cost/8) + '\n')


input.close()
output.close()