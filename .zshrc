# Path для поиска командой cd: то есть вместо cd $HOME/docs/editors/
# можно набирать просто cd editors
cdpath=(~/Projects ~/Projects/drivers)

# key bindings
typeset -A key

key[Home]=${terminfo[khome]}

key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char

bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

# Use hard limits, except for a smaller stack and no core dumps
unlimit
limit stack 8192
limit core 0
limit -s

# Access mode for new files
umask 022

# Fix less behavior
export LESS="-R"

# Aliases

# autoit

alias au='wine "C:\Program Files\AutoIt3\AutoIt3.exe"'

# common
alias dpkgb='dpkg-buildpackage -rfakeroot -b -us -uc'
alias patch='patch -p1 < '
alias ssh='ssh -Y'
alias cd..='cd ..'
alias ls='ls --color=auto'
alias l='ls -l'
alias fixkeyboard='/etc/X11/xinit/fixkeyboard'

alias mv='nocorrect mv -i'
alias cp='nocorrect cp -iR'
alias rm='nocorrect rm -i'
alias rmf='nocorrect rm -f'
alias rmrf='nocorrect rm -fR'
alias mkdir='nocorrect mkdir'

alias h=history
alias grep=egrep
alias df='df -m'
alias less='less -M'
alias ls='ls -F --color=auto'

ff()
{
  find . -type f -name $1
}

ftext()
{
  find . -type f -name $1 | xargs grep "$2" | grep -v 'svn' | grep -v '~'
}

fcp()
{
  find . -type f -name '*.cpp' | xargs grep "$1"
}

fh()
{
  find . -type f -name '*.h' | xargs grep "$1"
}

# grep
alias grep='grep --color=auto'

# mplayer
alias mplayer20='mplayer -vf eq=10:20'
alias mplayer10='mplayer -vf eq=0:10'

# wget
alias wget200='wget --limit-rate=200k -c'

# vim
alias vi='vim'

# mcedit
alias mce='mcedit'

# make
alias ma='make all'
alias mkae='make'
alias amke='make'
alias maek='make'
alias amek='make'
alias mkea='make'
alias mk='make'
alias km='make'
alias makec='make clean'
alias mj='make -j2'
alias mkd='make deb'
alias mkdc='mkae deb-clean'
alias mkc='mkae clean'

# svn
alias svnan='svn annotate'
alias svni='svn info'
alias svnst='svn status | grep -v \? | less'
alias svnstall='svn status | less'
alias svnch='svn checkout'
alias svnci='svn commit'
alias svnup='svn update'
alias svncp='svn copy'
alias svnrv='svn revert'
alias svndel='svn delete'

svnrvall()
{
  svn st -q | awk '{print $2;}' | xargs svn revert
}

svnl()
{
  svn log "${@}" | less
}

svnd()
{
  svn diff "${@}" | colordiff | less
}


# git
alias gitam='git am -3'
alias gitan='git annotate'
alias gitb='git branch'
alias gitbr='git branch -r'
alias gitc='git commit'
alias gitca='git commit -a'
alias gitcam='git commit --amend'
alias gitcf='git checkout -f'
alias gitch='git checkout'
alias gitchf='git checkout -f'
alias gitd='git diff'
alias gitdom='git diff origin/master'
alias gitdr='git diff --raw'
alias gitf='git fetch'
alias gitfo='git fetch origin'
alias gitfp='git format-patch "HEAD^"'
alias gitfpn='git format-patch -n '
alias gitl='git log'
alias gitm='git merge'
alias gitp='git pull'
alias gitpam='git push origin master && git push svn2 master'
alias gitpo='git pull origin'
alias gitpom='git pull origin master'
alias gitpum='git push origin master'
alias gitr='git remote'
alias gitrh='git reset --hard'
alias gitrhh='git reset --hard "HEAD^"'
alias gitrs='git remote show'
alias gitrso='git remote show origin'
alias gitrv='git revert'
alias gits='git show'
alias gitst='git status'
alias gitstu='git status -uno'
alias gt=git
alias gitpu='git push origin'
alias gitpo='git pull origin'

# path
USER="elly"

alias pe='cd /home/$USER/Projects/planar-editor'
alias pr='cd /home/$USER/Projects'
alias pu='cd /home/$USER/Projects/pui'
alias pw='cd /home/$USER/Projects/pui-firmware'
alias sb='cd ~/Projects/simunit/bin/_bin'
alias sc='cd /home/$USER/Projects/scripts'
alias sd='cd /home/$USER/Projects/simunit-downgrade'
alias si='cd /home/$USER/Projects/simunit'
alias s14='cd /home/$USER/Projects/simunit-1.4'
alias sl='cd /home/$USER/Projects/simtool'
alias ss='cd ~/Projects/simscreen'
alias ssb='cd ~/Projects/simscreen/bin'
alias ste='cd /home/$USER/Projects/step-controller'
alias la='cd /home/$USER/Projects/libarinc'
alias lat='cd /home/$USER/Projects/libatom'
alias lp='cd /home/$USER/Projects/libplanar'
alias lse='cd /home/$USER/Projects/libserial'
alias lms='cd /home/$USER/Projects/libmysql-state'
alias st='cd /home/$USER/Projects/simtool'
alias vd='cd /home/$USER/Projects/virt-dashboard'
alias ms='cd /home/$USER/Projects/mingw-starter'
alias dr='cd /home/$USER/Projects/drivers'
alias zc='cd /home/$USER/Projects/zero-cache'

alias sus='sudo su -'
alias shuh='shutdown -h now'

# usefull when copy/past examples ex: "$ echo $LANG"
alias \$=''
alias %=''

alias tree='tree -ifF'

# Ниже даны опции, относящиеся к функциям zsh,
# которыми собственно и определяется мощь этой оболочки

# Shell functions
setenv() { typeset -x "${1}${1:+=}${(@)argv[2,$#]}" }

# csh compatibility
freload() { while (( $# )); do; unfunction $1; autoload -U $1; shift; done }

# Where to look for autoloaded function definitions

fpath=($fpath ~/.zfunc)

# Autoload all shell functions from all directories in $fpath (following
# symlinks) that have the executable bit on (the executable bit is not
# necessary, but gives you an easy way to stop the autoloading of a
# particular shell function). $fpath should not be empty for this to work.
for func in $^fpath/*(N-.x:t); autoload $func

# automatically remove duplicates from these arrays
typeset -U path cdpath fpath manpath

# Patch PATH variable
PATH=$HOME/Projects/scripts/bin:$PATH:/usr/local/bin

# Указание путей к man-страницам.
## Linux:
manpath="/usr/man:/usr/share/man:\
/usr/local/man:/usr/X11R6/man:/opt/qt/doc"

export MANPATH

# Список хостов, к которым будет применяться
# автодополнение при наборе в командной строке
# например, как аргументов браузера или
# ftp-клиента (see later zstyle)
#hosts=('hostname' builder standpm builder50 builder64 yauza cellar server virtualbox windsor kompas)
hosts=('hostname' svn2 git.st uso2 pui pui-builder)

# Установка вида приглашения

## Обычное приглашение вида ~%=>
## (каталог от домашнего - пользователь/root - стрелка)
PROMPT='%m:%~:$ '

## Приглашения для второй линии многострочных команд
## вида #_строки>
PROMPT2='%i%U> '

# Всякие переменные

## файл истории команд
## если не указан, история не будет сохраняться
## при выходе из сеанса
HISTFILE=~/.zhistory

## Число команд, сохраняемых в HISTFILE
SAVEHIST=5000

## Чucлo кoмaнд, coxpaняeмыx в сеансе
HISTSIZE=5000

DIRSTACKSIZE=20

## Дополнение файла истрии
setopt  APPEND_HISTORY

## Игнopupoвaть вce пoвтopeнuя команд
setopt  HIST_IGNORE_ALL_DUPS

## Игнopupoвaть лишние пpoбeлы
setopt  HIST_IGNORE_SPACE

## Удалять из файл истории пустые строки
setopt  HIST_REDUCE_BLANKS

# Установка-снятие опций шелла
setopt   notify globdots pushdtohome cdablevars autolist
setopt   autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent noclobber
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

## Отключение звукового сигнала
## при ошибках
setopt  No_Beep

## Нe cчuтaть Control+C зa выxog uз oбoлoчku
setopt  IGNORE_EOF

# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile

bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand

# Для разворота сокращенного ввода типа cd d/e в docs/editors
autoload -U compinit
compinit
autoload colors # подключим цвета
colors

# Completion Styles

# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

# allow one error for every three characters typed in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors \
'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'

# insert all expansions for expand completer
zstyle ':completion:*:expand:*' tag-order all-expansions
# formacodeing and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''
# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# offer indexes before parameters in subscripts
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# command for process lists, the local web server details and host completion
#zstyle ':completion:*:processes' command 'ps -o pid,s,nice,stime,args'
#zstyle ':completion:*:urls' local 'www' '/var/www/htdocs' 'public_html'
zstyle '*' hosts $hosts

# Filename suffixes to ignore during completion (except after rm command)
zstyle ':completion:*:*:(^rm):*:*files' ignored-pacodeerns '*?.o' '*?.c~' \
'*?.old' '*?.pro'
# the same for old style completion
#fignore=(.o .c~ .old .pro)

# ignore completion functions (until the _ignored completer)
zstyle ':completion:*:functions' ignored-pacodeerns '_*'

# Gcc optimization flags
CFLAGS="-O2 -fomit-frame-pointer \
-funroll-loops -pipe -fPIC"
CXXFLAGS="$CFLAGS"
BOOTSTRAPCFLAGS="$CFLAGS"
export CFLAGS CXXFLAGS BOOTSTRAPCFLAGS

export EMAIL="Ilya Shpigor <petrsum@gmail.com>"
export EDITOR=vim

# Disable terminal freezing on Ctrl+S/Ctrl+Q keys
stty -ixon
