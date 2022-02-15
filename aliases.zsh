# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
# sp is short for "source profile"
alias sp="source $HOME/.zshrc"
# assumes you want to open the file with VS Code
alias openzsh="code $HOME/zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"

# JS
alias blowaway="rm -rf node_modules"
alias reinstall="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"

# Use nps without global install or adjusting PATH
# =======================
alias nps="npm run nps"

# Function to get the latest version of a branch on remote
# Usage: gitLatest <name-of-branch>
# =======================
function gitLatest(){
  git checkout main
  git branch -D $1
  git fetch
  git checkout $1
}

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
