# rename-default-git-branch
## Purpose
To easily rename the (offensive) 'master' branch for lots of local and remote git repos.
So far, it can handle github, but I'd like to expand to gitlab.

## Disclaimers
> :warning: This repo is still very rough!
Please only use it if you know git, read the (short script), and start with low-stakes repos
Also, check the "Todo" section below to see all the cases it doesn't support yet (to my knowledge).

But, I would welcome issues and feedback to improve it! :)

## Setup
- create a [github personal access token]

## Usage
I'm purposely not providing a simple usage here because I'd rather you read and understood the script.
However, once it's safer, I will provide the usage.

## Todo / Not handled (yet):
- [ ] warning messages / report
- [ ] breaks symbolic ref to remote HEAD
- [ ] automated testing
- [ ] currently messes up prompt
- [ ] confused by runnning on an already converted repo
- [ ] assumes running in parent directory of local repo
- [ ] assumes local repo name match remote (on github)
- [ ] assumes a master branch already exists (and locally)
- [ ] doesn't handle if you have a different default branch (do/don't want to change)
- [ ] github api creds must be added each time
- [ ] using messy human interface for git (switch to machine)
- [ ] may need to be on new branch locally...
- [ ] repo without a remote (or specifically `origin`)
- [ ] things that automatically point to the main branch (github actions, gitlab CI, pages, etc)
- [ ] things that manually point to the main branch (documentation, links, etc)
- [ ] speed (especially deleting remote branch is slow)
- [ ] configure different name for new repos' first branch: https://stackoverflow.com/a/50880622/5555637
- [ ] constraints about local save state before making changes?
- [ ] doesn't work on other remote git servers (e.g. gitlab) than github
- [ ] doesn't work on other OS's (e.g. windows)

[github personal access token]: https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line
