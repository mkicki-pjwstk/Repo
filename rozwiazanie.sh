#!/bin/bash
mkdir $1
cd $1
git init
git remote add origin git@github.com:mkicki-pjwstk/Repo.git
cp ./../rozwiazanie.sh ./
cp ./../rozwiazanie_config.sh ./
touch ReadMe.MD
echo "Numer indeksu: 225511": > ReadMe.MD
git add .
git commit -m "First commit"
git checkout -b Test
git status
touch Skip.txt
touch Add.txt
head -10 rozwiazanie.sh > Add.txt
tail -10 rozwiazanie.sh > Skip.txt
touch .gitignore
echo "Skip.txt" > .gitignore
git add .
git commit -m "Test commit"
git push origin Test
git checkout master
git push origin master
