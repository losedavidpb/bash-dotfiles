#
#!/bin/zsh
#

# Speeds up load time
DISABLE_UPDATE_PROMPT=true

# Perform compinit only once a day
autoload -Uz compinit

setopt EXTENDEDGLOB

for dump in $ZSH_COMPDUMP(#qN.m1); do
  compinit
  [[ -s "$dump" && (! -s "$dump.zwc" || "$dump" -nt "$dump.zwc") ]] && zcompile "$dump"
done

unsetopt EXTENDEDGLOB
compinit -

# Should be called before compinit
zmodload -i zsh/complist

autoload -Uz vcs_info
precmd () { title "zsh" "%m" "%55<...<%~"; vcs_info }

# For history substring search
zmodload zsh/terminfo

# Zsh autosuggestion
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

# Cd options ----

setopt AUTOCD                       # If passed value is a valid path, execute cd
setopt CHASE_DOTS                   # Fix .. relative paths at links
setopt CHASE_LINKS                  # Fix specification of path for links
setopt PUSHD_IGNORE_DUPS            # Don't put same directories at the stack
setopt PUSHD_SILENT                 # Don't print anything when pushd or popd

# Completion ----

setopt ALWAYS_LAST_PROMPT           # Key functions that list completions try to return to the last prompt if given no numeric argument.
setopt ALWAYS_TO_END 				# Move cursor to end if word has one match
setopt AUTO_LIST 					# Automatically list choices on ambiguous completion
setopt AUTO_MENU 					# Automatically use menu completion
setopt COMPLETE_ALIASES             # Completion for aliases
setopt NO_LIST_AMBIGUOUS            # Avoid list ambiguous
setopt LIST_PACKED                  # Try to make the completion list smaller (occupying less lines) by printing the matches in columns with different widths.

# Expansion and globbing -----

setopt NO_MATCH                     # Passes the command as is instead of reporting pattern matching failure see Chrysostomus/manjaro-zsh-config#14
setopt RC_EXPAND_PARAM              # Array expansion with parameters
setopt NUMERIC_GLOB_SORT            # Sort filenames numerically when it makes sense
setopt EXTENDED_GLOB                # Extended globbing. Allows using regular expressions with *
setopt NO_CASE_GLOB                 # Case insensitive globbing

# Job -----

setopt NO_CHECK_JOBS                # Don't warn about running processes when exiting

# Input and Output -----

setopt CORRECT_ALL 					# Autocorrect commands
setopt IGNORE_EOF                   # Do not exit when EOF has been typed
setopt INTERACTIVE_COMMENTS 		# Allow comments in interactive shells

# History -----

setopt HIST_VERIFY                  # Use history for autocompletion
setopt HIST_IGNORE_DUPS			    # Remove duplicated lines in ZSH history
setopt APPEND_HISTORY               # Immediately append history instead of overwriting
setopt HIST_IGNORE_ALL_DUPS         # If a new command is a duplicate, remove the older one
setopt HIST_REDUCE_BLANKS 			# Remove superfluous blanks from history items
setopt INC_APPEND_HISTORY 			# Save history entries as soon as they are entered
setopt SHARE_HISTORY 				# Share history between different instances of the shell
setopt EXTENDED_HISTORY             # Add timestamps to history

setopt prompt_subst                 # Enable PROMPT for substitution

# Default help command
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk

unalias run-help &>/dev/null
alias help=run-help

# Speeds up load time
DISABLE_UPDATE_PROMPT=true