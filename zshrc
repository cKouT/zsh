alias lc='colorls'

export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/jackiboy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

## Configuration PowerLevel9k
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  z
  colored-man-pages
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# config du prompt
POWERLEVEL9K_CUSTOM_DEBIAN_ICON="echo -e '\uf306' "
POWERLEVEL9K_CUSTOM_DEBIAN_ICON_BACKGROUND=234
POWERLEVEL9K_CUSTOM_DEBIAN_ICON_FOREGROUND=196

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_debian_icon dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()


## Configuration PowerLevel9k
POWERLEVEL9K_MODE="nerdfont-complete"


## Configuration du prompt
### Deuxième ligne de prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
## Préfixe des deux lignes (la flèche tordue)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\u256d\u2500 "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u2570\uf460 "
## Saut de ligne entre chaque prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

## Couleurs
### Répertoires
POWERLEVEL9K_DIR_HOME_BACKGROUND=39
POWERLEVEL9K_DIR_HOME_FOREGROUND=232
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=39
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=232
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=39
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=232
### Heure
POWERLEVEL9K_TIME_FOREGROUND=232
### Status
POWERLEVEL9K_STATUS_OK_BACKGROUND=232
POWERLEVEL9K_STATUS_OK_FOREGROUND=46
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=232
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=196
### Ssh
POWERLEVEL9K_SSH_ICON='\uf68c'
### Root
POWERLEVEL9K_ROOT_ICON='\uf198 '
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=196
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND=232
### Processus en arrière-plan
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=232
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=178

## Configuration du format de l'heure
POWERLEVEL9K_TIME_FORMAT="%D{\ue383 %H:%M \uf073 %d.%m.%y}"

## Définition des segments du prompt
### Gauche (première ligne)
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_debian_icon ssh context root_indicator dir dir_writable vcs virtualenv)
else
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_debian_icon root_indicator dir dir_writable vcs virtualenv)
fi

## Délai Auto-Update
export UPDATE_ZSH_DAYS=7


###################
# Liste des alias #
###################
alias lc='colorls'
alias zshconfig='vi ~/.zshrc'
alias apt='/home/<login>/bin/boost_cmd apt'

#################################
# Configuration de l'historique #
#################################
## Nombre de lignes en mémoire
HISTSIZE=3000

## Fichier de sauvegarde
HISTFILE=~/.zsh_history

## Nombre d'entrées à enregistrer
SAVEHIST=3000

## Suppression des doublons
HISTDUP=erase

## Ajout des entrées en mode append
setopt    appendhistory

## Partage de l'historique entre terminaux
setopt    sharehistory

## Ajout immédiat à l'historique (pas à la fermeture du terminal)
setopt incappendhistory

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time battery)

###########################
# Configuration de Python #
###########################
## Encodage de Python en utf-8
export PYTHONIOENCODING="utf-8"    

unset GREP_OPTIONS
