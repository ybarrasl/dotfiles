#!/usr/bin/env fish
echo " ##### Perfoming setup config files #####"

# Create links
echo " ##### Setting up Symlinks #####"
set nvim_configs ~/.config/nvim
set config_fish ~/.config/fish

# If there is already a symlink or hardcoded file for the nvim config remove it.
if test -L $nvim_configs
    echo "Unlinking $nvim_configs..."
    unlink $nvim_configs
end
if test -d $nvim_configs
    echo "Removing $nvim_configs..."
    rm -rf $nvim_configs
end

# If there's a symlink or and existing file for the config.fish, remove it.
if test -L $config_fish
    echo "Unlinking $config_fish..."
    unlink $config_fish
end
if test -d $config_fish
    echo "Removing the existing fish configs ..."
    rm -rf $config_fish
end

ln -s ~/repos/dotfiles/nvim $nvim_configs 
ln -s ~/repos/dotfiles/fish $config_fish 

source $config_fish

echo " Curl is required, installing ... "
sudo apt install -y curl neovim

echo " ##### Installing fisher for the fish shell #####"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

echo " Installing fisher packages "
fisher install jomik/fish-gruvbox

echo "##### Installing Neovim Plug, plugin manager #####"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Installing python packages
sudo apt install -y python3-pip
pip3 install pynvim jedi



