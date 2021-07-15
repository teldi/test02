#!/usr/bin/env bash

DATE=$(date)

echo "# test02" >> README.md               
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:teldi/test02.git
git push -u origin main		


git branch -M master                       
git checkout master  
git push origin master


touch text02.txt 
git add .
git commit -m "add text02.txt"
git push origin HEAD 


git checkout main
touch text03.txt 
git add .
git commit -m "add text03.txt"
git push origin HEAD 


git checkout -b brNew0715a 
touch text_brNew0715a_01.txt 
git add .
git commit -m "add text_brNew0715a_01.txt"
git push origin HEAD 

git checkout -b brNew0715b 
touch text_brNew0715b_01.txt 
git add .
git commit -m "add text_brNew0715b_01.txt"
git push origin HEAD 


git checkout brNew0715a
git merge brNew0715b
git push origin HEAD 


git checkout main
git merge brNew0715a  
git push origin HEAD 

git checkout master
git merge main   
git push origin HEAD 


