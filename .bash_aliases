# All aliases that should be loaded.

# Python aliases
alias pip='python -m pip'
alias venv='python -m venv'

# Pipenv aliases
alias pe='pipenv'
alias pesh='pipenv shell'
alias pepy='pipenv --python'
alias pesync='pipenv sync'
alias pesyncd='pipenv sync --dev'
alias peup='pipenv update'
alias peupd='pipenv update --dev'
alias pein='pipenv install'
alias peind='pipenv install --dev'
alias pegr='winpty pipenv graph'

# Django aliases
alias djmanage='winpty python manage.py'
alias djrunserver='winpty python manage.py runserver'
alias djmigrate='python manage.py migrate'
alias djmakemig='python manage.py makemigrations'
alias djcsu='winpty python manage.py createsuperuser'
alias djstatic='winpty python manage.py collectstatic'

# Git aliases
alias gaa='git add -A'
alias gci='git commit'
alias gst='git status'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gm='git merge'
alias gp='git push'
alias gpl='git pull'
alias gf='git fetch'
alias gd='git diff'
alias gltree="git log --graph --oneline --decorate --all"
alias gbtree="git log --graph --simplify-by-decoration --pretty=format:'%d' --all"

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Fix common mistake
alias cd..='cd ..'

# Back out of directory fast.
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
