PROJ_DIR="$(cd `dirname $0` ; pwd)"

# add vimrc
ln -s ${PROJ_DIR}/vim/vimrc ${HOME}/.vimrc

# add gitconfig
ln -s ${PROJ_DIR}/git/gitconfig ${HOME}/.gitconfig

# add tmux conf
ln -s ${PROJ_DIR}/tmux/tmux.conf ${HOME}/.tmux.conf

# add pip conf
mkdir -p ${HOME}/.pip
ln -s ${PROJ_DIR}/pip/pip.conf ${HOME}/.pip/pip.conf
