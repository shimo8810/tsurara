zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
fpath+=(/usr/share/zsh/site-functions)
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.volta/bin:$PATH

bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# ランダムな文字列を生成する関数 `rnd`
#
# 使用法:
#   rnd              # 32文字の文字列を1行生成 (デフォルト)
#   rnd -w <文字数>    # 指定した文字数で1行生成
#   rnd -n <行数>      # 32文字の文字列を指定した行数生成
#   rnd -w <文字数> -n <行数> # 文字数と行数を指定して生成
#
function rnd() {
  # デフォルト値を設定
  local width=32
  local lines=1

  # zshの引数解析機能 `zparseopts` を使用
  # -w と -n オプションをそれぞれの変数に格納する
  zparseopts -D -E -- w:=opt_w n:=opt_n

  # -w が指定されていたら width を上書き
  if [[ -n "$opt_w" ]]; then
      width=${opt_w[2]}
  fi

  # -n が指定されていたら lines を上書き
  if [[ -n "$opt_n" ]]; then
      lines=${opt_n[2]}
  fi

  # コマンドの実行
  cat /dev/urandom | base64 | tr -d '\n' | fold -w "${width}" | head -n "${lines}"
}