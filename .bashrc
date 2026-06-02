export LS_COLORS="$LS_COLORS:di=0;36:ln=0;35:ex=0;32"

alias ls="gls --color=auto"
alias cat="bat"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cd=z

alias pip=pip3
alias python=python3

if [ -f ~/local/.bashrc.local ]; then 
   source ~/local/.bashrc.local
fi

if [ -z "$TMUX" ]; then
    exec tmux new-session -A -s default
else
    PROMPT_COMMAND='echo -ne "\e[5 q"'  # back to bar when returning to shell

    [ -f ~/.fzf.bash ] && source ~/.fzf.bash
    eval "$(zoxide init bash)"

    fastfetch
    echo

    eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/config.json)"
fi
