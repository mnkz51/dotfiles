#
# .bash_profile
#

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="/usr/local/bin:$HOME/bin:$PATH"

if [ -f ~/.asdf/asdf.sh ]; then
    . ~/.asdf/asdf.sh
fi

if [ -f ~/.asdf/completions/asdf.bash ]; then
    . ~/.asdf/completions/asdf.bash
fi

# __END__
