#
# .bash_profile
#

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="/usr/local/bin:$HOME/bin:$PATH"

eval "$(anyenv init -)"

# __END__
