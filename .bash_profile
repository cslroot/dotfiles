# Jananese Locale
LANG=ja_JP.UTF-8; export LANG

#===== PATH =====
PATH="/usr/bin:/usr/sbin:/bin:/sbin"
MANPATH="/usr/share/man"
if test -d /opt/X11; then
  PATH=/opt/X11/bin:$PATH
  MANPATH=/opt/X11/share/man:$MANPATH
else
  PATH=/usr/X11/bin:$PATH
  MANPATH=/usr/X11/share/man:$MANPATH
fi

test -d /usr/local && PATH=/usr/local/bin:/usr/local/sbin:$PATH &&
                      MANPATH=/usr/local/share/man:$MANPATH
test -d /opt/local && PATH=/opt/local/bin:/opt/local/sbin:$PATH &&
                      MANPATH=/opt/local/share/man:$MANPATH
export PATH MANPATH

export NODE_PATH=/usr/local/lib/node_modules

#===== BASH COMPLETION (from homebrew) =====
if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi


#===== ALIAS =====
alias fcd='source /usr/local/bin/fcd.sh'



# include .bashrc
test -f ~/.bashrc && . ~/.bashrc


export PATH=$PATH:~/NVPACK/android-sdk-macosx/platform-tools
export PATH=$PATH:~/NVPACK/android-sdk-macosx/tools
export NDKROOT="~/NVPACK/android-ndk-r8"
export ANT_HOME="~/NVPACK/apache-ant-1.8.2"
export PATH=$PATH:~/NVPACK/apache-ant-1.8.2/bin
