# --- 移動・一覧 ---
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -lahG'          # 隠しファイル込み・サイズ読みやすく・色付き

# --- 安全装置（上書き・削除前に確認） ---
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# --- git ---
alias g='git'
alias gst='git status -sb'   # 短く表示

## --- branch操作 ---
alias gsw='git switch'
alias gswc='git switch -c'   # 新規ブランチ
alias gswt='git switch --track' # remote branchから作成
alias gb='git branch'
alias gbr='git branch -r'
alias gbd='git branch -d'

## --- 差分確認 ---
alias gd='git diff'
alias gds='git diff --staged'
## --- ステージング ---
alias ga='git add'
alias gaa='git add --all'
alias gap='git add -p'
alias grs='git restore'
alias grss='git restore --staged'
## --- commit ---
alias gc='git commit -v'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
## --- ログ確認 ---
alias gl='git log --oneline --graph --decorate -20'
alias glo='git log --oneline -20'
alias gll='git log --graph --pretty=format:"%C(auto)%h %C(blue)%ad %C(green)%an%C(auto)%d %s" --date=short -20'
## --- リモート同期 ---
alias gp='git pull --rebase'
alias gps='git push'
alias gpsf='git push --force-with-lease'
alias gf='git fetch --all --prune'
## --- stash ---
alias gsta='git stash push -u'
alias gstp='git stash pop'

# --- pnpm ---
alias p='pnpm'
alias pi='pnpm install'
alias pd='pnpm dev'
alias pt='pnpm test'
alias px='pnpm dlx'

# --- その他 ---
alias reload='source ~/.zshrc && source ~/.zprofile'   # 設定変更をすぐ反映

