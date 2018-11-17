#
# .bash_profile
#

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="/usr/local/bin:$HOME/bin:$PATH"

# Project HOME
REPOS_HOME=$HOME/Workspace
if [ -d "$REPOS_HOME" ]; then
    for REPO_NAME in $(ls $REPOS_HOME); do
        if [ -d "$REPOS_HOME/$REPO_NAME/.git" ]; then
            C_REPO_NAME=$(echo $REPO_NAME | tr '[:lower:]-.' '[:upper:]__')
            export ${C_REPO_NAME}_HOME=$REPOS_HOME/$REPO_NAME
        fi
    done
fi

# __END__
