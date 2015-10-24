#1.1 Think About Time

This was a fun exercise for me as I’ve had some experience with several of the concepts mentioned. I was really intrigued by the Fogg Method for its focus on habitual change and improvement. It reminded me of [a great Radiolab episode](http://www.radiolab.org/story/117291-you-v-you/) about how sometimes we get in our own way.

Since I can remember, I’ve been a procrastinator and perfectionist. Early on I developed organizational skills and systems for myself as coping mechanisms (scheduling, lists, color coding, sticky notes on the bathroom mirror - you name it). In school I used to make external commitments to my friends about deadlines. If I had a paper due I would pledge to my best friend that the rough draft would be done by Wednesday day or else I owed her laps after school (I **HATE** to run…) - that worked.

One of my old bosses introduced me to timeboxing and I timeboxed in fixed increments set for repetitive tasks (more like the Pomodoro technique). But as my work has changed and evolved to be more creative I find this kind of timeboxing feels more difficult. I have a hard time estimating how long something should take if I don’t really know how I’m going to solve a problem. I think this is a sign that I'm not doing enough reflection and tracking. I think this is still a successful strategy for me so I plan to re-focus my timeboxing efforts by really tracking my time with a REAL LIFE TIMER and also adhering to a stricter schedule. All this research has really reminded me that I’m better in the evenings than the mornings and should honor that fact.

My plan for DBC is three fold:

* Variable length timeboxing in a fixed schedule
  * I'm a night owl with a newly purchased kitchen timer. It's on.
* Shut down the distractions
  * Thanks to an episode of one of my favorite podcasts, [Note to Self](http://www.wnyc.org/story/how-can-we-stop-trading-attention-profit/), I’m inspired to find the right app for my computer and phone to shut down all distractions (email, text, calls, calendar notifications) when I’m in work mode. If anyone has a suggestion for an app or settings they like - let me know!
* Trello to manage it all
  *List-o-philes should definitely try [Trello](https://trello.com/home) - it’s free and amazing. My favorite way to keep track of all the crap I want to get done.

#1.2 The Command Line

**What is a shell? What is “bash?"**

The shell is very scary deep dark hole that I wish I hadn’t found. Just kidding! The shell is cool - it’s a blank slate where our command lines live and through which we powerful programmers can control our computers! Well so far I can only move things around and print them out and stuff… but we’re getting there! Thanks Shell! Bash is Shell’s best pal! Bash is the only one that can really talk to Shell. Ya know? Thy understand each other. Technically - bash is the language that the shell interprets.


**What was the most challenging for you in going through this material?**

The most challenging thing for me was getting started. I was really tempted to ask all my questions of my coworkers on the development team to get some fast answers to blast through my confusion. But I’m happy I just stuck with it and got through my confusion on my own. Finding the answers in my own research and trying out my ideas in the shell was really rewarding.


**Were you able to successfully use all of the commands?**

Indeed I am so happy (and relieved) to say that I got all the commands to work. It was a little touch and go there when attempting to move those text files from my desktop to the temp directory - but after a fabulous walk and a latte - I moved those files!


**In your opinion, what are the most important commands and arguments to know?**

I think the most important thing we learned in this exercise is how to get around and how to answer our own questions. So with that in mind, I love all the “helpful” commands - like man and pwd and ls.


**Can you remember what each of the following does off the top of your head? Write what each does.**

- pwd - print working directory (lets you know where you are)
- ls - list contents of the current directory
- mv - move a file or directory (actually just renames it)
- cd - change directories (move up and down in your current stack of directories)
- ../ - when cd precedes it - move up one level in your current stack (or mush these babies together to move up several steps in one line)
- touch - creates a new (empty) field
- mkdir - make a new directory
- less - shows you the contents of a files (one page at a time)
- rmdir - remove a directory
- rm - removed a file
- help - shows you a list of available commands

#1.4 Forking and Cloning

*If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be?*

_Creating a new repository is easy! Check it:_

- Navigate to your GitHub profile and click the + icon at the top right.
- Choose “New repository” from the drop down list and complete the next page.
- Name your new repository (hint: the best names are descriptive and short)
- Decide if you want a public or private repository
- Select the licensure you want
- Finish up by clicking the green “Create Repository” button

_To Fork and Clone a repository:_

- Navigate to your chosen repository (called repo for short) in GitHub and hit the “Fork” button at the top right
  - This button copies the repo and adds it to your GitHub profile in one easy button. Cool huh?
- Now you want to get a local copy of that repo on your computer and to do this we’ll clone it to our local machine. We’ll be using our command line to clone - but first we’ll need the link from GitHub.
  - After forking the repo to your username you should be automatically in your copy of the repo - the url should be something like this: https://github.com/your_username_here/your_forked_repo_name
  - from this page simply copy the URL on the bottom right of your screen under "HTTPS clone URL” - now we’re ready for the command line!
- Open your terminal and navigate to the directory in which you want to store your local copy of this repo
- Type the command: git clone <paste the url you copied from GitHub here> and hit enter

Voila! Success - you have a local copy of the repo on your machine!

*Why would you fork a repository as opposed to create a new one?*

Forking a repo copies everything in one fell swoop. Creating your own copy would require setting up and saving your own files and directories and all their content, links, resources. Why re-do when you can simply fork? But that’s the simple answer - I also think that forking a repo is the major way to jump in and git gitin’ while the git is good. After all, if you can see the repo it’s public and therefore open-source. You could fork a repo and contribute or collaborate. Or build something that integrates with another’s code. You could play with code and try to figure out new things and understand how it works.

*What struggles did you have setting up git and GitHub? What did you learn in the process?*

I struggled with troubleshooting (I had to fix my sublime path…that was hard). But aside from that - I’m excited that setting up git and GitHub was relatively easy. I learned a lot in the process, however. Prior to phase 0 I read about forking and cloning and gone through the GitHub tutorials but had no practical experience. I couldn’t answer why or when you would do or use any of this. It just felt like word soup that I had to come back to and figure out. I worried that I would have to do this on my own and was so relieved that the last few assignments have prepared us so well. So now that I understand the principles of version control and more about why we need and use git, I find the way GitHub works intuitive. I can easily see why you need a local copy even though repos are stored and easily accessible on GitHub. I’m eager to get in there and start committing and pushing!