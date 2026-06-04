#!/usr/bin/env bash

set -euo pipefail

echo "Installing Homebrew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Updating Homebrew"
brew update

echo "Installing packages"

brew install \
    bash \
    fastfetch \
    btop \
    coreutils \
    yazi \
    zoxide \
    bat \
    tmux \
    oh-my-posh \
    python \
    stow

curl -fsSL https://raw.githubusercontent.com/junegunn/fzf/master/install | bash -s -- --all

BREW_BASH="$(brew --prefix)/bin/bash"

echo "$BREW_BASH" | sudo tee -a /etc/shells >/dev/null
chsh -s "$BREW_BASH"

echo "Setting up dotfiles with stow"
cd "$(dirname "$0")"
stow .
