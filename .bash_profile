# Set up virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Add bashmarks - http://www.huyng.com/projects/bashmarks/index.html
source ~/.local/bin/bashmarks.sh

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Change the default prompt
export PS1="[✭ \w] \[\033[32m\]\$(parse_git_branch)\[\033[00m\] "

# Adds some colors in ls and ll
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

# Launch Sublime Text 2 in my Pelican posts directory
alias blog='subl /Applications/MAMP/htdocs/alexpgates.github.com/source/posts'

# Turn off all your Hue lights
alias off='hue lights off'

#Quick calculation from command line
calc(){ awk "BEGIN{ print $* }" ;}

# MacPorts Installer addition on 2013-03-14_at_10:37:15: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.