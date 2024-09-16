#!/bin/bash

brew bundle --file ~/.config/Brewfile

# Check if Oh My Zsh is installed and if not, install it.
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is already installed."
else
    echo "Oh My Zsh is not installed. Installing now..."
    
    # Install Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    
    # Check if installation was successful
    if [ $? -eq 0 ]; then
        echo "Oh My Zsh has been successfully installed."
    else
        echo "There was an error installing Oh My Zsh. Please check your internet connection and try again."
    fi
fi

# Set starship preset
starship preset pastel-powerline -o ~/.config/starship.toml
