#PATH
typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.config/scripts/" "$HOME/.local/share/applications" "$path[@]")
export PATH
#AWSume alias to source the AWSume script
alias awsume="source \$(pyenv which awsume)"

#Auto-Complete function for AWSume
#Auto-Complete function for AWSume
fpath=(~/.awsume/zsh-autocomplete/ $fpath)
