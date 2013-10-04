# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# common
alias shuh='shutdown -h now'
alias sus='sudo su -'
alias shuh='sudo shutdown -h now'
alias hib='sudo pm-hibernate'

alias dpkgb='dpkg-buildpackage -rfakeroot -b -us -uc'
alias patch='patch -p1 < '
alias ssh='ssh -Y'
alias cd..='cd ..'
alias ls='ls --color=auto'
alias l='ls -l'
alias fixkeyboard='/etc/X11/xinit/fixkeyboard'

alias hist='cat ~/.persistent_history | grep --color'
alias df='df -m'
alias less='less -M'
alias ls='ls -F --color=auto'

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
alias mj='make -j8'
alias mkd='make deb'
alias mkdc='mkae deb-clean'
alias mkc='mkae clean'

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
alias gitpo='git pull origin'
alias gitpom='git pull origin master --tags'
alias gitpum='git push origin master --tags'
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
alias gitpsm='git push samsung master'

# path
alias pr='cd ~/Projects'
alias os='cd ~/Projects/openacc_scripts'
alias vgc='cd ~/Projects/vd-gcc-openacc'
alias zc='cd ~/Projects/zero-cache'
alias pzc='cd ~/Projects/python-zero-cache'
alias zcu='cd ~/Projects/zero-cache-utils'

#alias autoconf='autoconf2.64'
