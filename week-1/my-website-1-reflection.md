[check out my website!](http://lindsey-s.github.io/)

**Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.**

In the abstract this is a simple process but might sound weird. To start, it's important to know that repositories live on GitHub and we always want the most up-to-date and workable version of our projects to live there. We won't be working on our projects on GitHub, instead we work on them on our local machines. This is perhaps easier to understand if you think of the GitHub as the repository for all saved drafts of the project and your local machine as the repository for the active or working draft. The trick to the whole GitHub game is to keep your local repo and your GitHub repo as up-to-date as possible. The way to start is to create a new repo on your GitHub profile, then we'll clone it to our local machine, work on it and merge our changes back to the GitHub repo. Now we have updated our draft! Here's a little more detail about the first few steps: creating and a new repo on GitHub and cloning it down to your local machine.

We start by going to our GitHub profile, hitting the "+" icon and choosing "New Repository" from the drop-down menu. GitHub has a really intuitive interface and you will be prompted to choose a name for your repo, decide if you want it to be public or private and choose your licenses. Finish up with the green "Create Repository" button and you've created a repo on GitHub! Huzzah!

Next we want to clone that repo to your local machine. GitHub's interface makes this simple as well and you are able to complete this without familiarity with your command line - but from here on I'll assume you are familiar with your command line. You will see a link on your new repo page in GitHub, copy it to your clipboard and take it to your command line. Clone it to the appropriate folder with the following simple command: git clone paste_your_repo_link_here . That's it!!! You've got it cloned.

**Describe what open source means.**

Open source means what you are creating is free and open to the public. There are several different licenses that allow the creator to give specific permissions to users but in general, open source means you can see it, use it, download it, evolve it, suggest updates or edits to the creator and collaborate.

**What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?**

I think I love open source. Funny you should ask, too, because yes it does feel like utopia! I must admit that I have a healthy nervousness around releasing my own material into the open source sea - I expect to get over this in small stages, however. Right now I'm nervous that things won't be well received and I'm nervous that I'll feel insecure and generally bad if someone (helpfully and rightfully) points out an error in whatever I might release. I know that this inevitable occurrence will be a great opportunity for learning - but yeah, I'm just nervous. I don't generally feel protective, however. I see the great benefit of putting out what you're working on and attracting other like-minded individuals - or sparking debate, possibly. That excites me - I'm just a little nervous about my contribution. The normal social anxieties I suppose!

**Assess the importance of using licenses.**

Licenses are important! Releasing your project without any licenses leaves you vulnerable to others claiming your work as their own since doing so means you relinquish the nascent original copyright you have as the creator. Thinking about how your project will be used by others and how you would like to use it yourself in the future is the key to choosing the appropriate open-source license. I plan to do some additional research into specific licenses this weekend.

**What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?**

For some reason I keep forgetting to create new branches on my local machine when I want to update - I just get to the right directory and start making files. So in this challenge I finally did it right when creating the website. Hopefully that is finally solidified because that was a major source of struggle. In the previous challenge, I ended up deleting my reflection twice AND merging a change into the master directly. Sigh. I think the entire git and GitHub flow has finally sunk in after this challenge. It finally feels demystified.

**Did you find any resources on your own that helped you better understand a topic? If so, please list it.**

This was linked in one of our previous assignments but it really helped me git the git and the GitHub - thanks Scott Chacon and Ben Straub [Pro Git](http://git-scm.com/book/en/v2)