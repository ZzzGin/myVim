#!/bin/bash
echo "This bash file will do the following things:"
# echo "  1. Creating backup for previous ~/.vimrc in ./backup. Do nothing when those things do not exist;"
echo "  1. Install vim-plug."
echo "  2. Copying ./myVimrc to ~/.vimrc."
echo "  3. Install plugins."
# echo "You can run ./rollBack.sh to go back to previous settings."

# backup () {
#     echo "1. Backing up..."
#     if [ ! -d "./backup" ]; then
#         mkdir ./backup
#     fi
#     if [ -a "$HOME/.vimrc" ]; then
#         echo "  > copying ~/.vimrc to ./backup/previousVimrc"
#         cp ~/.vimrc ./backup/previousVimrc
#     else
#         echo "  > ~/.vimrc does not exist."
#     fi
# }

installVimPlug () {
    echo "1. Installing Vim-Plug..."
    if [ ! -d "$HOME/.vim" ]; then
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    else
        echo "  > ~/.vim already exist."
    fi
}

copyVimrc () {
    echo "2. Copying ./myVimrc to ~/.vimrc..."
    if [ -f "./myVimrc" ]; then
        cp ./myVimrc ~/.vimrc
    else
        echo "  > ./myVimrc does not exist."
    fi
}

installPlugin () {
    echo "3. Installing Plugins..."
    vim +PlugInstall +qall
}

read -r -p "Are you sure to proceed?[y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    # backup
    installVimPlug
    copyVimrc
    installPlugin
else
    echo "Terminated."
fi
