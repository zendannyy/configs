# bash_profile config for new setups

# vagrant aliases
alias vgrssh="vagrant reload; vagrant ssh"
alias vgssh="vagrant up; vagrant ssh"

# git aliases
alias gitpu="git push origin main"
# git push the 'right' way
alias gitpsu="git push --set-upstream origin $1"

alias gitmerge="git merge $1; git push -u origin main"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/<user>/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/<user>/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/<user>/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/<user>/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
