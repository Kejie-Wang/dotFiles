PROJ_DIR="$(cd `dirname $0` ; pwd)"

# add vimrc
ln -s ${PROJ_DIR}/vim/vimrc ${HOME}/.vimrc
# install vundle to manage vim plugin
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
  echo "Not exist"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# add gitconfig
ln -s ${PROJ_DIR}/git/gitconfig ${HOME}/.gitconfig

# add tmux conf
ln -s ${PROJ_DIR}/tmux/tmux.conf ${HOME}/.tmux.conf

# add pip conf
mkdir -p ${HOME}/.pip
ln -s ${PROJ_DIR}/pip/pip.conf ${HOME}/.pip/pip.conf
