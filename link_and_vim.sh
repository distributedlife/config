ln -sf ~/projects/config/.bashrc ~/.bashrc
ln -sf ~/projects/config/.bash_profile ~/.bash_profile
ln -sf ~/projects/config/.vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
