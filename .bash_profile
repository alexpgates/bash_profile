# Set up virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Add bashmarks - http://www.huyng.com/projects/bashmarks/index.html
source ~/.local/bin/bashmarks.sh

# Change the default prompt
export PS1="[✭ \w] "

# Adds some colors in ls and ll
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

# Launch Sublime Text 2 in my Pelican posts directory
alias blog='subl /Applications/MAMP/htdocs/alexpgates.github.com/source/posts'
