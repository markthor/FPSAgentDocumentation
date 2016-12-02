#!/bin/sh

# Only keep score lines
grep Score $1 > grepped

# Clean score lines into “iteration \tab score”
sed -E "s/o.d\.o\.l\.ScoreIterationListener - Score at iteration ([0-9]+) is ([0-9]+\.[0-9]+)/\1     \2/g" grepped > cleaned

# Keep every n-th line
if [ -z $2 ] || [[ "$2" -eq 1 ]]; then
    cp cleaned nth
else
    awk -v nth=$2 'NR%nth==1' cleaned > nth
fi


# Insert headers
filename=$1
sed '1s/^/iteration  score\
/g' nth > ${filename%.out}.dat

# Remove tmp files
rm grepped
rm cleaned
rm nth