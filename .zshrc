for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

export LSCOLORS="fxfxcxdxbxegedabagacad"

source ~/code/antigen/antigen.zsh
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

source /Users/olegafx/.iterm2_shell_integration.zsh
