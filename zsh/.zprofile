# Import the shell-anostic environment config
source ~/.profile

############
# ZShell History Configuration
HISTSIZE=10000			# How many lines of history to keep in memory
HISTFILE=~/.zsh_history		# Where the save history to disk
SAVEHIST=10000			# Number of history entries save to disk
HISTDUP=erase			# Erase duplicates in the history file
setopt	appendhistory		# Append history to the history file (no overwriting)
setopt	sharehistory		# Share history across terminals
setopt	incappendhistory	# Inmmediately append to the history accros file, not just when a term is killed

