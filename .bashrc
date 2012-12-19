
# If not running interactively, don't do anything
test -z "$PS1" && return

# Make bash chek it's window size after a process completes
# 端末のウィンドウサイズを${COLUMNS}と${LINES}に反映
shopt -s checkwinsize

#===== history =====
HISTSIZE=99999          # 保存数 0で無効
HISTFILESIZE=99999999   # ファイルへの記録数 0で無効
HISTCONTROL=ignoreboth  # スペースorタブの開始行、前と重複する行は記録しない

#====== alias =====
# less の代わりにlvを使う．
test -x /usr/local/bin/lv && alias less=/usr/local/bin/lv
# ls のカラー表示とdirectoryにスラッシュ
test -x /usr/local/bin/gls && alias ls='gls  -F --color=auto'
alias la='ls -alg'
alias ll='ll -l'
alias rm='rm -i'


# Finderで開く
alias here='open .'
# 画面クリア
alias cls=clear


export PATH=$PATH:~/NVPACK/android-sdk-macosx/platform-tools
export PATH=$PATH:~/NVPACK/android-sdk-macosx/tools
export NDKROOT="~/NVPACK/android-ndk-r8"
export ANT_HOME="~NVPACK/apache-ant-1.8.2"
export PATH=$PATH:~/NVPACK/apache-ant-1.8.2/bin
