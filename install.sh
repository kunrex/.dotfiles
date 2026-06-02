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
    fzf \
    bat \
    tmux \
    oh-my-posh

BREW_BASH="$(brew --prefix)/bin/bash"

echo "$BREW_BASH" | sudo tee -a /etc/shells >/dev/null
chsh -s "$BREW_BASH"

"$(brew --prefix)/opt/fzf/install" --all
