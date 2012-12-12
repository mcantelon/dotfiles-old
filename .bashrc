# cvs helpers (for Drupal.org work)
alias multiforms='git clone --branch 6.x-1.x http://git.drupal.org/project/multiforms.git'

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
alias gi='git remote show origin'
alias ga='git add'

alias glog='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'

# hub (https://github.com/defunkt/hub)
#alias git=hub

# deja-related
alias cheat='deja cheat'

# wrapper for JShint
function hint() {
  jshint $1 --config $HOME/.jshint.json
}

# PATH tweak for npm, etc.
export PATH=$PATH:/usr/local/bin

# set cvs-related (for Drupal.org work)
export CVSROOT=:pserver:mcantelon@cvs.drupal.org:/cvs/drupal-contrib
export CVSEDITOR=/bin/vi

# tweak bash prompt
export PS1='\h|\W$ '

# paging ls
alias lsm='ls -l | more'

# load site-specific aliases, etc.
if [ -f $HOME/.bash_local ];
then
  source $HOME/.bash_local
fi

alias flush='./symfony propel:purge --title=Qubit --description="Test Site" --username=mike --password=mike --email="mcantelon@gmail.com"'
