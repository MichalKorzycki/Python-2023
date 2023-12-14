import csv
import sys

data = []

with open(sys.argv[1]) as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        data.append(row)

