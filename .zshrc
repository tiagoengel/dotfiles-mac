# To activate completions, add the following to your .zshrc:
#   fpath=(/usr/local/share/zsh-completions $fpath)
# You may also need to force rebuild `zcompdump`:
#   rm -f ~/.zcompdump; compinit
# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
#   chmod go-w '/usr/local/share'

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

fpath=(/usr/local/share/zsh-completions $fpath)

# dircolors $HOME/.dir_colors/dircolors.256dark > /dev/null
ZSH_THEME="robbyrussell"
DEFAULT_USER="$USER"

plugins=(git mvn extract history-substring-search themes osx)

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#ASDF
# source $HOME/.asdf/asdf.sh
# source $HOME/.asdf/completions/asdf.bash
