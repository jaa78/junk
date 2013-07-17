# Calculate the average discharge rate for all data
# Files in a directory

for datafile in data_*.txt 
do 
    echo -n $datafile ' ' >> avg_rates_all_data.txt
    python avg_discharge_rate.py $datafile | 
	sort -k 3 -n | 
	head -1 >> avg_rates_all_data.txt
done