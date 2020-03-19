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

# Set some common environment variables.
export EDITOR='vim'
export GIT_EDITOR='vim'
export SHELL='/bin/zsh'
# export MANPAGER='col -b | vim -MR - '

# Use emacs shell mode, so that Ctrl-A, <esc>, etc all work.
set -o emacs

# History settings
setopt histreduceblanks
setopt histignorespace
setopt histignorealldups

# Directory history
setopt autopushd pushdsilent pushdtohome pushdignoredups pushdminus
alias dh='dirs -v'
DIRSTACKSIZE=5
setopt inc_append_history  # share history across tmux panes  # not working

# Autocorrect
setopt correct

# Globbing
setopt extendedglob
setopt globdots
