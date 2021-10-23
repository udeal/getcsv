#!/bin/bash
echo "generating csv"
source env/bin/activate
cd ./scraping
python3 deal-amz.py
cd ..

echo "commit git"
git add -A
git commit -m "WIP"
git push

echo "update done"
