# dotfiles

```bash
$ git clone https://github.com/mnkz51/dotfiles ~/.dotfiles
$ ln -s ~/.dotfiles/.bashrc ~/.bashrc
$ ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
$ ln -s ~/.dotfiles/.dircolors ~/.dircolors
$ ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
$ mkdir -p ~/.vim/backup/ ~/.vim/swap/
$ cp -pr ~/.dotfiles/.vim/autoload ~/.vim/.
$ ln -s ~/.dotfiles/.vimrc ~/.vimrc
$ vim -c PlugInstall -c q -c q
```
