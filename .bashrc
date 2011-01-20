# cvs helpers (for Drupal.org work)
alias multiforms_head='cvs -z6 checkout -d multiforms contributions/modules/multiforms'
alias multiforms_6dev='cvs -z6 checkout -r DRUPAL-6--1 -d multiforms contributions/modules/multiforms'

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

# set cvs-related (for Drupal.org work)
export CVSROOT=:pserver:mcantelon@cvs.drupal.org:/cvs/drupal-contrib
export CVSEDITOR=/bin/vi

# set for npm
export NODE_PATH=$HOME/npm_root

# load site-specific aliases, etc.
source $HOME/.bash_local
