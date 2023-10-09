export ZSH=$HOME/.oh-my-zsh

git config --global core.editor "code --wait"
git config --global user.name "Vincent Dondain"
git config --global user.email vincentdondain@github.com

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
