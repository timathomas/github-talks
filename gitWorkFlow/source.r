# Setup
	git config --global user.name "Vlad Dracula"
	git config --global user.email "vlad@tran.sylvan.ia"

	git config --global core.autocrlf input
	git config --global core.autocrlf true

### Creating a repository
cd ~/Desktop # navigate to a directory
mkdir planets # make a directory (folder) calles plamets
cd planets # move into that directory

git init # initialize the directory

ls # take a look inside

ls -a # look a little deeper

git status # check the git status

### Track Changes
mkdir moons # make another directory called moons
nano mars.txt # create a text file using the core editor
Cold and dry, but everything is my favorite color
	# press ctrl X, y, return
cat mars.txt # look at

git status # check the git status
git add mars.txt # stage mars.txt
git status # check the additions

git commit -m "Start notes on Mars as a base"
git status

### Check the commit
git log

### Adding changes
nano mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman

cat mars.txt

git status
git diff

git commit -m "Add concerns about effects of Mars' moons on Wolfman"
	# this won't work until we add (stage) it

git add mars.txt
git commit -m "Add concerns about effects of Mars' moons on Wolfman"

### Let's add some more

nano mars.txt
But the Mummy will appreciate the lack of humidity

cat mars.txt

git diff

git add mars.txt
git diff
git diff --staged

git commit -m "Discuss concerns about Mars' climate for Mummy"

git status

git log
git log -1
git log --oneline

### Exploring histories

nano mars.txt
An ill-considered change

git diff HEAD mars.txt

git add mars.txt
git commit -m "considerations"

git diff HEAD~1 mars.txt
git diff HEAD~2 mars.txt

### Checkout an older version
git log --oneline

git checkout HEAD~2 mars.txt
cat mars.txt

git checkout HEAD mars.txt
cat mars.txt

# git checkout 7666d11 mars.txt
# git log --oneline

# Revert back to our original head

### Branching

git branch wip
git branch

git checkout wip
git branch

nano mars.txt
Elon is giving us a ride tomorrow
git add mars.txt
git commit -m "travel plans"
cat mars.txt

git checkout master
cat mars.txt

git merge wip

### Collaborating with github.com




