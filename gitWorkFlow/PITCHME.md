## git & Github.com Workflows

#### What to do with all that code...
presentation data and slides: 
[https://github.com/timathomas/talks/tree/gitWorkFlow](https://github.com/timathomas/talks/tree/master/gitWorkFlow)

---

What ___NOT___ to do (a.k.a. my dissertation)
![](gitWorkFlow/images/messy.png)

---
A better git workflow 
![](gitWorkFlow/images/bettergit.png)

--- 

### Why git? 
#### Version Control

* Version control is like an unlimited ‘undo’.
* Version control also allows many people to work in parallel.

--- 

### Why git? 

* base version
* make some edits
* rewind
* add more edits

![](gitWorkFlow/images/whygit1.png)

---?image=gitWorkFlow/images/whygit2.png&size=contain

---?image=gitWorkFlow/images/whygit3.png&size=contain

---

This tutorial is taken largely from [Software Carpentry https://software-carpentry.org/lessons/](https://software-carpentry.org/lessons/)

---

Creating a repository 

```
cd ~/Desktop # navigate to a directory
mkdir planets # make a directory (folder) calles plamets
cd planets # move into that directory

git init # initialize the directory

ls # take a look inside

ls -a # look a little deeper

git status # check the git status
```
---

Tracking changes 

```
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
```

After you commit, git takes everything we added (staged) and stores a permanent copy in the `.git` directory. This is called a [commit](http://swcarpentry.github.io/git-novice/reference#commit) and it's identifier is named in the commit output. 

--- 

Check the commit
```
git log
```

Adding some changes
```
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
```

---

Let's add some more
```
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
```

---

Exploring histories
```
nano mars.txt
An ill-considered change

git diff HEAD mars.txt

git add mars.txt
git commit -m "considerations"

git log --oneline
git diff HEAD~1 mars.txt
git diff HEAD~2 mars.txt
```

---

Checkout an older version
```
git log --oneline

git checkout HEAD~2 mars.txt
cat mars.txt

git checkout HEAD mars.txt
cat mars.txt
```

---
### Branching
```
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
cat mars.txt
```

---

### Collaboration with [github.com](https://github.com)

---

Make some commits and then do a pull request 
This way, collaborators can see what you're working on 
Name it a 
```
WIP: ....
```

---

...or push an existing repository from the command line
```
git remote add origin https://github.com/timathomas/planets.git
git push -u origin master 
```

---

```
echo "*~" >> .gitignore

git add .gitignore
git commit -m "add .gitignore"
git push origin master 
```

---

new pull request 
forking 
