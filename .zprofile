# PATHの重複削除
typeset -U path

# homebrew（他のPATHより下位にするため最初に書く）
eval "$(/opt/homebrew/bin/brew shellenv)"

# PATH
## Added by Antigravity CLI installer
export PATH="$HOME/.local/bin:$PATH"

## jaspr
export PATH="$HOME/.pub-cache/bin:$PATH"

# IDE向けのシム
eval "$(mise activate zsh --shims)"

