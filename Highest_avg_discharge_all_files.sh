# Calculate the average discharge rate for all data
# Files in a directory

for datafile in data_*.txt 
do 
    echo $datafile
    python avg_discharge_rate.py $datafile | sort -k 3 | tail -1
done