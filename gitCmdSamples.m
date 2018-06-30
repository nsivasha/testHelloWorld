% Non executable file

% list of useful MATLAB command line git commands
>> git branch --help

% shows the list branches and the active branch is prefixed with a star
>> git branch --list  
* branchTake1
  master

% output of above branch list command is char as a row with multiple lines
% use findstr command to identify the string such as "master" in the char
% array coming back from branch list command  
  
  
  
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


% committing a modified file, this command throws a MATLAB prompt to add a
% commit message
% this change did not go through since there was no "add" command before
% this "commit" command.
>> git('commit')
On branch branchTake1
Your branch is up to date with 'origin/branchTake1'.
Changes not staged for commit:
	modified:   testWithMatlab.m
no changes added to commit

% push the changes from local to server, throws up a prompt to login to
% gitHub with credentials
% this change did not go through since there was no "add" command before
% this "commit" command.
>> git('push')
Everything up-to-date
git('status')
On branch branchTake1
Your branch is up to date with 'origin/branchTake1'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
	modified:   testWithMatlab.m
no changes added to commit (use "git add" and/or "git commit -a")


% tried to fix the problem by first checking status and then adding and
% then committing and pushing the file to repo
>> git('status')
On branch branchTake1
Your branch is up to date with 'origin/branchTake1'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
	modified:   gitCmdSamples.m
	modified:   testWithMatlab.m
no changes added to commit (use "git add" and/or "git commit -a")

% add the file for commit, had to close the Notepad++ editor from the previous MATLAB session to create commit message to ensure that
% the fatal error went away.
>> git('add','testWithMatlab.m')
fatal: Unable to create 'D:/Data/cae/tools/GitRelated/GitDesktopWkspc/testHelloWorld/.git/index.lock': File exists.
Another git process seems to be running in this repository, e.g.
an editor opened by 'git commit'. Please make sure all processes
are terminated then try again. If it still fails, a git process
may have crashed in this repository earlier:
remove the file manually to continue.

% rerun add command after closing Notepad++
% this time all files are committed with no errors
%
>> git('add','testWithMatlab.m')
>> git('commit')
[branchTake1 6b8d270] fourth commit after the add command.
 1 file changed, 7 insertions(+)
>> git('push')
To https://github.com/nsivasha/testHelloWorld.git
   7ff6d47..6b8d270  branchTake1 -> branchTake1
>> git status
On branch branchTake1
Your branch is up to date with 'origin/branchTake1'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
	modified:   gitCmdSamples.m
no changes added to commit (use "git add" and/or "git commit -a")


