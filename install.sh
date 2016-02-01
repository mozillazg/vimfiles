#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

function main() {
    cd ~
    git clone https://github.com/mozillazg/vimfiles.git ~/.vim
    curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install_neobundle.sh
    sh ./install_neobundle.sh && rm ./install_neobundle.sh
    pip install -r ~/.vim/requirements.txt --user
    touch ~/.viminfo; mkdir ~/.vimundo
    ln -s ~/.vim/.vimrc ~/.vimrc
    vim +NeoBundleInstall +qall
}

main
