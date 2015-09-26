export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Override local php
# export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"

# Chef DK
# export PATH="/opt/chefdk/bin:/opt/chefdk/embedded/bin:$HOME/.chefdk/gem/ruby/2.1.0/bin:$PATH"
eval "$(chef shell-init bash)"

# Misc
export EDITOR="/usr/bin/vim"

ulimit -n 1024
ulimit -u 1024
