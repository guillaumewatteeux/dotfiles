# Load Antigen for ZSH
source $(brew --prefix)/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle brew

# Pass bundle
antigen bundle pass

# For SSH, starting ssh-agent is annoying
antigen bundle ssh-agent

# Python Plugins
antigen bundle pip
antigen bundle python
antigen bundle virtualenv

# Theme
antigen theme bhilburn/powerlevel9k powerlevel9k

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply

# Limit User on powerline9k
export DEFAULT_USER=$USER
#######
# PowerLine9K Properties
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time battery)
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
# Limit to the last two folders
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=8
POWERLEVEL9K_SHOW_CHANGESET=true
# Change battery icon
POWERLEVEL9K_BATTERY_ICON=$'\u26A1'
#######

