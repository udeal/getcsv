#!/bin/bash
echo "generating csv"
source /home/ubuntu/getcsv/env/bin/activate
cd /home/ubuntu/getcsv/scraping
python3 deal-amz.py

echo "commit git"
cd /home/ubuntu/getcsv
git add -A
git commit -m "WIP"
git push

echo "update done"
