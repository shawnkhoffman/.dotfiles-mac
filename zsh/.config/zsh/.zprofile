# if [[  "$(tty)" = "/dev/tty[0-9]*" ]]; then
# 	startx "$HOME/.xinitrc"
# fi
export DOTFILES=$HOME/.dotfiles

if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="nvim,zsh"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

# STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES $DOTFILES/install
# Created by `pipx` on 2024-03-06 22:11:31
export PATH="$PATH:/Users/shawnhoffman/.local/bin"
