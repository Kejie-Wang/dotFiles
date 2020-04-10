PROJ_DIR="$(cd `dirname $0` ; pwd)"

INSTALL_PREFIX=$HOME

if [ $# -eq 1 ];then
  INSTALL_PREFIX=$1
  mkdir -p $INSTALL_PREFIX
fi

# add vimrc
ln -s ${PROJ_DIR}/vim/vimrc ${INSTALL_PREFIX}/.vimrc
# nvim init.vim
mkdir -p $INSTALL_PREFIX/.config/nvim
ln -s ${PROJ_DIR}/vim/vimrc $INSTALL_PREFIX/.config/nvim/init.vim
# install vim.plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# add gitconfig
ln -s ${PROJ_DIR}/git/gitconfig ${INSTALL_PREFIX}/.gitconfig

# add tmux conf
ln -s ${PROJ_DIR}/tmux/tmux.conf ${INSTALL_PREFIX}/.tmux.conf

# add pip conf
ln -s ${PROJ_DIR}/pip ${INSTALL_PREFIX}/.pip

# add zsh conf
ln -s ${PROJ_DIR}/zsh/zshrc ${INSTALL_PREFIX}/.zshrc
touch ~/.platform-zshrc

# install oh-my-zsh
export ZSH=$PROJ_DIR/oh-my-zsh
if [ ! -d $ZSH ]; then
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi
ln -s $PROJ_DIR/oh-my-zsh $HOME/.oh-my-zsh
