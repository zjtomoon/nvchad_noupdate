# neovim config 

## Clone the repo and prepare the enviroments

```shell
git clone https://github.com/Zwlin98/nvim ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 
cd ~/.config/nvim && python -m venv nvim-python

cd $HOME && ./.config/nvim/nvim-python/bin/python3 -m pip install pynvim
```

## In vim command line

```vim
#install the plugin
:PackerSync
#ensure neovim work properly
:checkheath
```

### No LSP version is on branch `no-lsp`.
