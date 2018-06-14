#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# So the shell can find mpicxx and family.
export PATH=/home/rrokkam/Documents/mpich-install/bin:$PATH

# Change the keyboard map to colemak-wide.
xkbcomp -w 0 ~/Documents/config/xkbmap $DISPLAY

# Set some common environment variables.
export EDITOR='vim'
export GIT_EDITOR='vim'
export SHELL='/bin/zsh'

# History settings
setopt histreduceblanks
setopt histignorespace
setopt histignorealldups

# Directory history
setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups
alias dh='dirs -v'
DIRSTACKSIZE=5
setopt inc_append_history  # share history across tmux panes

# Autocorrect
setopt correct

# cd part takes you to partition, from anywhere
# setopt cdablevars
# part=$HOME/Documents/partition

# Globbing
setopt extendedglob
setopt globdots

# Stop zsh from asking for confirmation when using rm
unalias rm

# Shorten time for key sequences to remove delay when pressing Esc
KEYTIMEOUT=1  # 10ms
