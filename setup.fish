#!/usr/bin/fish
echo " ##### Perfoming setup config files #####"


# Create links
echo " ##### Setting up Symlinks #####"
set nvim_configs="~/.config/nvim"
set config_fish="~/.config/fish/config.fish"

if test -d $nvim_configs
    rm -f $nvim_configs
end

if test -e $config_fish
    rm -f $config_fish
end

ln -s ~/repo/dotfiles/nvim $nvim_configs
ln -s ~/repo/dotfiles/fish/config.fish ~/.config/fish/config.fish

echo " ##### Installing fisher for the fish shell #####"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

echo " Installing fisher packages "
fisher install jomik/fish-gruvbox

# Installing python packages
pip install pynvim jedi



