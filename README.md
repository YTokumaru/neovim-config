# Neovim configuration
## What this is
A configuration file for neovim, for c/c++, python developments

## Direcories and files
* maps.lua -- contains keymapping for nvim/plugin.
* init.lua -- mainly "require" other files
* plugins.lua -- packer is here
* visual.lua -- setting to do with the aesthetics of the editor
* setting.lua -- other settings that did not go into the files above
* lua/ -- All plugin configuration is done here

## How to use
1. Copy the files under ~/.config/nvim
2. Check that your environment matches mason requirements using ":checkhealth mason"
3. If anything is missing, then install/update it
4. Change the path to python interpreter with debugpy on file lua/nvim-dap-python_conf.lua
5. Download the language config files for tree sitter using :TSInstall command

## When installing new plugins
1. Get the plugin using packer by adding to plugins.lua
2. Write a configuration file for the plugin (if you need to)
3. "require" that file from init.lua
