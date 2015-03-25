# Vim

rm -rf ~/.vimrc
ln -s $(pwd)/vim/.vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
sudo apt-get install -y build-essential cmake python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

# Sublime
ln -s $(pwd)/sublime/ipdb.sublime-snippet ~/.config/sublime-text-3/Packages/User/ipdb.sublime-snippet
ln -s $(pwd)/sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
