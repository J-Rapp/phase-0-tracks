# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control sets virtual "save points" as you modify the contents of a repository. This allows you to roll back to previous points in your progress if needed. This process is completed with Git and GitHub. Git is the actual program that runs in individual repositories, keeping track of all the changes and commits made. GitHub is a remote service that streamlines the process of multiple people working on any given repository. Git and GitHub make it quite easy for teams to share and work on code and projects together.
* What is a branch and why would you use one?
    - A branch is a separate version of the master repository, which starts as identical at first, but is intended for making alterations over time. Branches are useful for testing out various modifications to a master repository without needing to worry about effecting the master in detrimental ways.
* What is a commit? What makes a good commit message?
    - A commit is the digital marker for those "save points". Git files can exist in several states: untracked, modified, and staged. If a file is untracked, it has been created but is new to the branch. If a file is modified, it previously existed in the branch but has had modifications since the most recent commit. If a file is staged, it will be included the next time a commit command is executed. (I might argue there could even be a fourth state where everything within a branch exists as "committed".) Every commit should be accompanied by a good commit message in order to provide snapshots of what was accomplished. Commit messages should be written in present tense, and should give excellent detail as to what changes have occured since the previous commit.
* What is a merge conflict?
    - A merge conflict occurs when Git is unable to reconcile separate pushes applied to any given branch. I'm not quite certain how these are resolved; my basic Googling on the topic illuminates that Git is at least capable of noticing where the discrepencies in the files exist, but it looks like the resolution leg work needs to be done manually.
