#!/usr/bin/fish
echo " ##### Perfoming setup config files #####"

# Create links
echo " ##### Setting up Symlinks #####"
ln -s ~/repo/dotfiles/nvim ~/.config/nvim
ln -s ~/repo/dotfiles/fish/config.fish ~/.config/fish/config.fish

echo " ##### Installing fisher for the fish shell #####"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

echo " Installing fisher packages "
fisher install jomik/fish-gruvbox

# Installing python packages
pip install pynvim jedi



