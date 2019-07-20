#!/bin/bash
echo "This bash file will solify your vim settings to this repo, the previous saved settings will be discarded."
read -r -p "Are you sure to proceed?[y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    if [ -a "$HOME/.vimrc" ]; then
        echo "  > copying ~/.vimrc to ./myVimrc"
        cp ~/.vimrc ./myVimrc
    else
        echo "  > ~/.vimrc does not exist."
    fi
else
    echo "Terminated."
fi
