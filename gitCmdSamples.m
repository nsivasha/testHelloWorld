% Non executable file

% list of useful MATLAB command line git commands
>> git branch --help

% shows the list branches and the active branch is prefixed with a star
>> git branch --list  
* branchTake1
  master

% switches to the branch given after "checkout"
>> git checkout master
Your branch is up to date with 'origin/master'.
Switched to branch 'master'
  
% show the current status in the working folder
>> git('status')
On branch master
Your branch is up to date with 'origin/master'.
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	git.m
	gitCmdSamples.m
nothing added to commit but untracked files present (use "git add" to track)

% switches to the branch given after "checkout", this is the script mode
% with ability to pass variables into command
>> git('checkout','branchTake1')
Your branch is up to date with 'origin/branchTake1'.
Switched to branch 'branchTake1'