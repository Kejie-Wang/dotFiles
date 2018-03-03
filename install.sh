PROJ_DIR="$(cd `dirname $0` ; pwd)"

INSTALL_PREFIX=$HOME

if [ $# -eq 1 ];then
  INSTALL_PREFIX=$1
  mkdir -p $INSTALL_PREFIX
fi

# add vimrc
ln -s ${PROJ_DIR}/vim/vimrc ${INSTALL_PREFIX}/.vimrc

# install vundle to manage vim plugin
if [ ! -d "${INSTALL_PREFIX}/.vim/bundle/Vundle.vim" ]; then
  echo "Not exist"
  git clone https://github.com/VundleVim/Vundle.vim.git $INSTALL_PREFIX/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# add zsh conf
ln -s ${PROJ_DIR}/zsh/zshrc ${INSTALL_PREFIX}/.zshrc
touch ~/.platform-zshrc

# add gitconfig
ln -s ${PROJ_DIR}/git/gitconfig ${INSTALL_PREFIX}/.gitconfig

# add tmux conf
ln -s ${PROJ_DIR}/tmux/tmux.conf ${INSTALL_PREFIX}/.tmux.conf

# add pip conf
mkdir -p ${INSTALL_PREFIX}/.pip
ln -s ${PROJ_DIR}/pip/pip.conf ${INSTALL_PREFIX}/.pip/pip.conf
