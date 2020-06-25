function git_current_branch() {
    local ref
    ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null)
    local ret=$?
    if [[ $ret != 0 ]]; then
      [[ $ret == 128 ]] && return  # no git repo.
      ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    fi

    if [[ $ref != '' ]]; then
      printf ' \001\033[01;34m\002git:(\001\033[00m\002\001\033[01;31m\002%s\001\033[01;34m\002)\001\033[00m\002' ${ref#refs/heads/}
    fi
}
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

PS1='\[\033[01;32m\]\u@3060\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(git_current_branch)\$ '
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
