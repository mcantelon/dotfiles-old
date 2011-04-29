# cvs helpers (for Drupal.org work)
alias multiforms='git clone mcantelon@git.drupal.org:project/multiforms'

# subversion helpers
alias sst='svn status'
alias sup='svn update'

# git helpers (via https://github.com/ryanb/dotfiles/blob/master/zsh/aliases)
alias gl='git pull'
alias gp='git push'
alias gpom='git push origin master'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias pull='git pull origin master'

alias glog='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'

# hub (https://github.com/defunkt/hub)
alias git=hub

# deja-related
alias djh="cd $HOME/.deja"

# wrapper for JShint
function hint() {
  jshint $1 --config $HOME/.jshint.json
}

# set cvs-related (for Drupal.org work)
export CVSROOT=:pserver:mcantelon@cvs.drupal.org:/cvs/drupal-contrib
export CVSEDITOR=/bin/vi

# set for npm
export NODE_PATH=$HOME/npm_root

# set for n
export N_PREFIX=$HOME/local

# load site-specific aliases, etc.
source $HOME/.bash_local
