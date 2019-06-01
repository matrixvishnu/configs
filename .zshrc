# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
  export ZSH=/home/vishnu/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="fino"

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
#plugins=(zsh-256color)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


################### ENABLE VIM MODE ON COMMMAND LINE  ##########

####################POWER LEVEL 9 THEME CONF################
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_SHOW_CHANGESET=true

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""



# Custom command to get pylint logs without re-running

# Colors
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="118"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="160"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="orangered1"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="grey0"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="grey0"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="001"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="001"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="001"
POWERLEVEL9K_PYENV_FOREGROUND="blue"
POWERLEVEL9K_PYENV_BACKGROUND="grey0"
POWERLEVEL9K_STATUS_FOREGROUND="red"
POWERLEVEL9K_STATUS_BACKGROUND="grey0"
POWERLEVEL9K_CONTEXT_BACKGROUND="pink"
POWERLEVEL9K_OS_ICON_BACKGROUND='pink'
POWERLEVEL9K_OS_ICON_FOREGROUND='089'
POWERLEVEL9K_TIME_BACKGROUND="chartreuse3"
POWERLEVEL9K_TIME_FOREGROUND='darkgreen'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'
# Prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('os_icon' 'context' 'dir' 'vcs'
'dir_writable' )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('time' 'vi_mode')


# `Pyenv` is deprecated, use `python -v` instead


# enable vi mode
set -o vi
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/vishnu/google-cloud-sdk/path.zsh.inc' ]; then . '/home/vishnu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/vishnu/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/vishnu/google-cloud-sdk/completion.zsh.inc'; fi
