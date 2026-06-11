# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY        # share history across sessions
setopt HIST_IGNORE_ALL_DUPS # don't record duplicates
setopt HIST_IGNORE_SPACE    # commands starting with a space stay out of history

# Completions
fpath=("$HOMEBREW_PREFIX/share/zsh-completions" $fpath)
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive

# Environment
export EDITOR='vim'
export LANG='en_US.UTF-8'
export GPG_TTY=$(tty)

# Prompt, smarter cd, fuzzy finder, runtime versions
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"
source <(fzf --zsh)

# Aliases, plus machine-specific/private config in ~/.extra (never committed)
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.extra ] && source ~/.extra

# Plugins — syntax highlighting must be sourced last,
# and history-substring-search right after it
source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
