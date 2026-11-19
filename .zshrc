# 履歴
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt share_history hist_ignore_all_dups

# 履歴の前方一致検索（入力済み文字列に一致する履歴を ↑ / ↓ で遡る）
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search

# 補完
autoload -Uz compinit && compinit

# プラグイン
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ツール初期化
eval "$(starship init zsh)"   # プロンプト（gitブランチ・Nodeのバージョン表示など）
eval "$(zoxide init zsh)"     # `z プロジェクト名` で移動
eval "$(mise activate zsh)"   # mise
source $HOME/Documents/Program/my-tools/packages/gwt/gwt.zsh

# alias
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# syntax-highlighting は最後に読み込む
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

