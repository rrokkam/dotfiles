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
export PATH=/home/rrokkam/.texlive2018/bin/x86_64-linux:$PATH
export PATH=/home/rrokkam/llvm/build/bin:$PATH
export MANPATH=$MANPATH:/home/rrokkam/.texlive2018/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/home/rrokkam/.texlive2018/texmf-dist/doc/info

# Change the keyboard map to colemak-wide.
xkbcomp -w 0 ~/Documents/config/xkbmap $DISPLAY

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

# Add back Ctrl-R
bindkey "^R" history-incremental-search-backward

# Autocorrect
setopt correct

# Globbing
setopt extendedglob
setopt globdots

# Shorten time for key sequences to remove delay when pressing Esc
KEYTIMEOUT=1  # 10ms

# Stop Ctrl-S from freezing terminal
stty -ixon

