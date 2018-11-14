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

### Check the commit
git log

### Adding changes
nano mars.txt
Cold and dry, but everything is my favorite color
The two moons may be a problem for Wolfman

git status
git diff
