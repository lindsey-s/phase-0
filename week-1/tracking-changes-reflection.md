#1.5 Tracking Changes Reflection

**How does tracking and adding changes make developers' lives easier?**
Tracking changes not only allows developers to return to earlier versions of their work if needed, it also makes colloboration easier. Everything is visible and clear in the log and you can navigate to any particular change to see specific history events and commit messages. If these commit messages are clearly written, you should be able to answer any questions for yourself about what that change accomplished. The processes and conventions of tracking changes forces us to be good historians.

**What is a commit?**
A commit is a set of changes you make to a file. You can return and view any commit: in this way, commits are like snapshots in time of the code or file.

**What are the best practices for commit messages?**
Commit messages are short and descriptive. They use present-tense imperative to express what merging that particular commit will do to your copy of the code or file. For example, if your code changed the color and font of the title your commit message might be: "Update color and font of title". Think of these like email subject lines.

If your commit message should be longer (maybe it's more complex) you can add explanatory text in subsequent paragraphs. The convention for these descriptive paragraphs is still to use imperative in the present-tense and to be concise. Explain your motivation for the change and compare and contrast the behavior of the previous file to this commit. Follow the first line with a blank space and add blank spaces between all paragraphs.

**What does the HEAD^ argument mean?**
The HEAD^ argument refers to the previous commit (when you are working on a current commit). You would use this argument if you have staged commits (moved them from untracked to the stage because you are preparing to commit them) and you decide you want to unstage them. To use this argument, type git reset HEAD {your file name goes here}

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**
1. Add the file to the stage
  * take a file your have updated from untracked to the stage
1.5 Remove the file from the stage
  * if you decide you want to continue editing your file, remove it from the stage, back to untracked status. Make your edits and save your file. When you're ready, add it to the stage again to prepare to commmit the change.
2. Commit the file
  * commit your change to update your local repository. This is your save point - your snapshot in time - to which you can return later if needed.
3. Push the change to the branch
  * push your commit to the remote repository (on GitHub). Don't forget to continue to GitHub and complete your pull request to merge your changes.

**Write a handy cheatsheet of the commands you need to commit your changes.**
1. Add the file to the stage
  * use the command: git add file_name_here
1.5. Remove the file from the stage
  *
2. Commit the file
  * use the command: git commit -m "type commit message here"
3. Push the change to the branch
  * use the command: git push origin branch-name-here

**What is a pull request and how do you create and merge one?**
A pull request is a request to merge changes into the remote repo. Once you've pushed your commit to the remote repo, go to GitHub and click "Pull Request" (you will either see the green button if your changes or you can click the grey right-hand button to create this). Complete the prompts on GitHub and add a message here for your fellow developers (if collaborating) before you hit the shiny green button: "Creat pull request".

**Why are pull requests preferred when working with teams?**
The only alternative to pull requests is to directly merge your changes with the master. If we do this, we don't give our teammates the chance to review our work and we shut out any meaningful colloboration. We could also make mistakes and crash the master code that the team is all sharing. This would not only mean a lot of work - but it's just bad sportsmanship! It's also likely that we'll create issues for our teammates who are trying to work on their own branches of the master and make their lives harder when they want to merge those back to master later on (through a pull request, of course). Long story short - pull those requests!