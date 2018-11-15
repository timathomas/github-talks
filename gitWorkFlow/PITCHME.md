## git & Github.com Workflows

#### What to do with all that code...
presentation data and slides: 
[https://github.com/timathomas/talks/tree/gitWorkFlow](https://github.com/timathomas/talks/tree/master/gitWorkFlow)

---

### what NOT to do
#### (a.k.a. my dissertation)

![](gitWorkFlow/images/messy.png)

---

### a better git workflow 

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

---

![Software Carpentry](https://software-carpentry.org/lessons/)

---

### Why git?
#### Collaboration with colleagues

![](gitWorkFlow/images/whygit2.png)

---

### Why git?
#### Collaboration with colleagues

![](gitWorkFlow/images/whygit2.png)

---

### Why git?
#### Collaboration with colleagues

![](gitWorkFlow/images/whygit3.png)

---

Creating a repository 

    cd ~/Desktop
    mkdir planets
    cd planets

    git init

    ls

    ls -a

    git status

---

Tracking changes 

    mkdir moons # make another directory called moons
    nano mars.txt # create a text file
    Cold and dry, but everything is my favorite color
        # press ctrl X, y, return
    cat mars.txt # look at

    git status # check the git status
    git add mars.txt # stage mars.txt
    git status # check the additions

    git commit -m "Start notes on Mars as a base"

After you commit, git takes everything we added (staged) and stores a permanent copy in the `.git` directory. This is called a [commit](http://swcarpentry.github.io/git-novice/reference#commit) and it's identifier is named in the commit output. 

--- 

    git commit -m "Start notes on Mars as a base"
the `-m` is a message flag describing your commit

---

`git log` lists all the commits to a repository in reverse chronological order. 

    commit 1262e2a0ef2ac0d0b6e4ace6682502fb8d8cc591 (HEAD -> master)
    Author: Tim Thomas <t77@uw.edu>
    Date:   Wed Nov 14 15:13:48 2018 -0800

    Start notes on Mars as a base

All the changes are located in the `.git` directory. 

--- 

Say we add some text to the `mars.txt` file: 

    nano mars.txt
    Cold and dry, but everything is my favorite color
    The two moons may be a problem for Wolfman

    git status    
    git diff

---

    $ git diff
    diff --git a/mars.txt b/mars.txt
    index d927c56..e4d197b 100644
    --- a/mars.txt
    +++ b/mars.txt
    @@ -1,2 +1,3 @@
    Cold and dry, but everything is my favorite color
    +The two moons may be a problem for Wolfman

---

![](gitWorkFlow/images/staging.png)

---

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

---

### Exploring histories 

---

    nano mars.txt
    An ill-considered change

    git diff HEAD mars.txt

    git add mars.txt
    git commit -m "considerations"

    git diff HEAD~1 mars.txt
    git diff HEAD~2 mars.txt

---

#### Checkout older versions

    git log --oneline

    git checkout HEAD~2 mars.txt
    cat mars.txt

    git checkout HEAD mars.txt
    cat mars.txt

---
### Collaborating on github.com

[github.com](https://github.com)

---
