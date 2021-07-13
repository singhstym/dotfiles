#!/usr/bin/env zsh

# Zsh Options
setopt CORRECT                  # Spelling Corrections
setopt EXTENDED_HISTORY         # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY            # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST   # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS         # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS     # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS        # Do not display a previously found event.
setopt HIST_IGNORE_SPACE        # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS        # Do not write a duplicate event to the history file.
setopt HIST_VERIFY              # Do not execute immediately upon history expansion.

# Enable zsh completion
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select  # Enable menu select
setopt COMPLETE_ALIASES             # Allow zsh to complete aliases

# Prompt
eval "$(starship init zsh)"
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# Enable vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Plugins
source $XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
