#!/bin/bash
set -e

echo "Setting up chezmoi..."

chezmoi init rxreyn3
chezmoi apply

echo "Setting up Powerlevel10k..."

# Clone Powerlevel10k repository
echo "Cloning Powerlevel10k repository..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install eza (modern ls replacement) using cargo
echo "Installing eza..."
if command -v cargo >/dev/null 2>&1; then
  cargo install eza
fi

echo "Powerlevel10k setup complete!"
echo "Please restart your shell or run 'exec zsh' to activate."

exec zsh

echo "Seting your git user information..."
echo "git config --global user.email \"you@example.com\""
echo "git config --global user.name \"Your Name\""