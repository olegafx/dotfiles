ulimit -n 65536 unlimited

export HOMEBREW_NO_AUTO_UPDATE=1
export CODE_PATH="$HOME/code"
export DOTFILES_PATH="$CODE_PATH/dotfiles"

PATH="/usr/local/bin:$PATH"
PATH="/opt/homebrew/bin:$PATH"

source "$HOME/.aliases"

if command -v brew >/dev/null 2>&1; then
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

export LSCOLORS="fxfxcxdxbxegedabagacad"

export STARSHIP_CONFIG="$DOTFILES_PATH/starship.toml"
eval "$(starship init zsh)"

PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

PATH="$HOME/.yarn/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
PATH="$VOLTA_HOME/bin:$PATH"

source "$CODE_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

export FZF_COMPLETION_TRIGGER='ff'
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"
source "$CODE_PATH/fzf-tab/fzf-tab.plugin.zsh"

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

export PATH
