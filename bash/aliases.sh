# Dirs
alias o="open ."  # OS X, open in Finder

# Files
alias t='touch'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Management
alias dots="nano ~/.dotfiles"
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'
alias redot='cd ~/.dotfiles && gpp && rake install; cd -'
alias aliases='nano .dotfiles/bash/aliases.sh'

# Shell
alias c='clear'
alias la='ls -alh'
alias cdd='cd -'  # back to last directory
alias pag='ps aux | grep '
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Portable ls with colors
if ls --color -d . >/dev/null 2>&1; then
  alias ls='ls --color=auto'  # Linux
elif ls -G -d . >/dev/null 2>&1; then
  alias ls='ls -G'  # BSD/OS X
fi
alias ll='ls -l'

# Ruby on Rails
alias sc="[ -f script/console ] && script/console || bundle exec rails console"
alias sdb="[ -f script/dbconsole ] && script/console --include-password || bundle exec rails dbconsole --include-password"
alias ss="[ -f script/server ] && script/server || rails server"
alias mig='rake db:migrate'
alias rsp="bundle exec specjour"
alias f="foreman start"

alias hosts='sudo nano /etc/hosts'

# Redis
alias redis="redis-server /usr/local/etc/redis.conf"

#mongo
alias mongod="mongod run --config /usr/local/etc/mongod.conf"

# HTTP
alias http="python -m SimpleHTTPServer 8080"
alias phpserve="php -S localhost:3000 ."

# MAMP
alias vhosts='sudo nano /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf'
alias phplog='nano /Applications/MAMP/logs/php_error.log '
alias apachelog='nano /Applications/MAMP/logs/apache_error.log' 
alias mysqllog='nano /Applications/MAMP/logs/mysql_error_log.err'
