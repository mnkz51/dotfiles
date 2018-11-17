#
# .bashrc
#

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return ;;
esac

# For bash completion
if [ -f "/usr/local/etc/bash_completion" ]; then
    source "/usr/local/etc/bash_completion"
fi

BASH_CMP_FILES=(
    git-prompt.sh
    git-completion.bash
    rails
)
BASH_CMP_DIR="/usr/local/etc/bash_completion.d"

for BASH_CMP_FILE in "${BASH_CMP_FILES[@]}"; do
    if [ -f "$BASH_CMP_DIR/$BASH_CMP_FILE" ]; then
	source "$BASH_CMP_DIR/$BASH_CMP_FILE"
    fi
done

# PS1
if type __git_ps1 >/dev/null 2>&1; then
    PS1='\[\033[;38;05;76m\]\u@\h\[\033[00m\]:\[\033[01;38;05;75m\]\w\[\033[1;31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
else
    PS1='\[\033[;38;05;76m\]\u@\h\[\033[00m\]:\[\033[01;38;05;75m\]\w\[\033[1;31m\]\[\033[00m\]\$ '
fi

# __END__
