#!/usr/bin/fish
echo " ##### Perfoming setup config files #####"

# Create links
echo " ##### Setting up Symlinks #####"
ln -s ~/repo/dofiles/nvim ~/.config/nvim


# Installing python packages
sudo apt install -y nvim

pip install pynvim jedi



