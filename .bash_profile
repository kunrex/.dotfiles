# Export local/bin
export PATH="$PATH:$HOME/.local/bin"

# Export pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"

#Export brew installs
export BREW_ROOT=$(brew --prefix)
export PATH="$PATH:$BREW_ROOT/bin"

# GPG signing
export GPG_TTY=$(tty)

# Export docker
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin"

# Export nvm
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$NVM_DIR"

#Export tailscale
export PATH="$PATH:/Applications/Tailscale.app/Contents/MacOS"

eval "$($BREW_ROOT/bin/brew shellenv)"

if [[ -r "$BREW_ROOT/etc/profile.d/bash_completion.sh" ]]; then
  source "$BREW_ROOT/etc/profile.d/bash_completion.sh"
fi

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/local/.bash_profile.local ]; then 
  source ~/local/.bash_profile.local   
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

