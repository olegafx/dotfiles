export HOMEBREW_NO_AUTO_UPDATE=1
export CODE_PATH="$HOME/code"

source ~/.iterm2_shell_integration.zsh

source "$HOME/.aliases"

if command -v brew >/dev/null 2>&1; then
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

export LSCOLORS="fxfxcxdxbxegedabagacad"

PATH="/usr/local/bin:$PATH"
PATH="/opt/homebrew/bin:$PATH"
PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

PATH="$HOME/.yarn/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
PATH="$VOLTA_HOME/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun" # bun completions

fpath+=$CODE_PATH/pure
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color yellow
prompt pure

source "$CODE_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

export PATH
