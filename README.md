# myVim
my Vim settings

### Updated August 23 2019
Add "set backspace=2" in myVimrc to make the backspace work right

### Updated July 20 2019
./initMyVim.sh: re-install the vim settings
./solidifyMyVIm.sh: save the current vim settings to this repo

## How to use:
``` bash
# Clone this git repo
git clone https://github.com/ZzzGin/myVim.git
# Do some backup for your own existing .vimrc if you want
cp ~/.vimrc ~/old_vimrc
# Go to the git repo
cd myVim
# Run the bash file to install my vim settings
./initMyVim.sh

# If you did some changes of the .vimrc and want to save these changes
./solidifyMyVim.sh
```

## What you get:
#### Plugins list:
- 'scrooloose/nerdtree'
- 'vim-airline/vim-airline'
- 'vim-airline/vim-airline-themes'
- 'Yggdroot/indentLine'
- 'w0ng/vim-hybrid'
- 'ctrlpvim/ctrlp.vim'
- 'easymotion/vim-easymotion'
- 'tpope/vim-surround'
- 'tpope/vim-commentary'
#### Features:
1. Nice looking theme
2. leader will be set as , 
3. Smart line number
  1. In normal mode, the current line number will be absolute line number. Other
     line number will be relative. This will help when you want to jump to some
     line by typing {n}+j or {n}+k. (n will be the relative line number)
  2. In insert mode, all line number will be absolte line number.
  3. leader+l to toggle line number
4. F5to quick run the code. See .vimrc to check which language is supported.
5. jk to replace esc
6. space to select the current word
7. leader w to save file in insert mode
8. ctrl+hjkl to navigate cursor in insert mode
9. ctrl+hjkl to navigate between different window
10. leader+n to show NERDTree
11. leader+v to find file in NERDTree
12. ctrl+p to fuzzy find file
13. ss to easymotion
