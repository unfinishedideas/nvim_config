# UnfinishedIdeas' NVIM Config
- Based heavily on the Primeagen's nvim config, this will customize nvim to be more useful for me
- [Here is his video](https://youtu.be/w7i4amO_zaE?si=wcK-wCfFdXEkjh-d)
- [Here is a link to his repo](https://github.com/ThePrimeagen/init.lua)

## Packages installed

- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [harpoon](https://github.com/ThePrimeagen/harpoon)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)


## Custom lua functions

- You can run `:lua ColorMyPencils("colorscheme-name")`, `:lua ForestMyPencils()`, or `:lua RoseMyPencils()` to change the color scheme of the editor
- Install more themes in `/lua/unfinishedideas/packer.lua`

## Custom nvim keybinds

`<leader>` key is set to `<space>`

| Key              | Description                                                                                                                               |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `J` or `K`       | Move highlighted lines up or down!                                                                                                        |
| `<leader>p`      | When copy pasting over something: allow you to keep the copied string so you can keep pasting instead of changing to the highlighted word |
| `<leader>y`      | This let's you do <leader>y to yank into your system clipboard!                                                                           |
| `<leader>d`      | Deleting to void register in either visual or normal mode                                                                                 |
| `<leader>f`      | Format the lsp? It runs `vim.lsp.buf.format`                                                                                              |
| `<leader>s`      | Allows you to press space-s to start replacing the word you are on                                                                        |
| `<leader>x`      | Makes your file executable, so just press this to make a bash script usable instead of going out and using chmod                          |
<!--|                  |                                                                                                                                           |-->


## Custom Keybinds for Plugins

`<leader>` key is set to `<space>`

### Telescope

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `<leader>pf`     | Open the file explorer                                                      |
| `<leader>ps`     | Grep files                                                                  |
| `<C-p>`          | Find git files                                                              |

### Harpoon

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `<leader>a`      | Start tracking a file with Harpoon                                          |
| `<C-e>`          | Open the Harpoon menu                                                       |
| `<C-h,j,k,l>`    | Select Harpoon'd file 1,2,3,4 (h,j,k,l)                                     |
| `<C-i>`, `<C-o>` | Cycle left / right through Harpoon'd files (doesn't loop)                   |

### Undotree

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `<leader>u`      | Toggle the Undotree window                                                  |


### Fugitive

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `<leader>gs`     | Toggle git stuff                                                            |

### Lsp-Zero

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `K`              | Get info about a symbol                                                     |
| `gd`             | Jump to a definition of a symbol                                            |
| `gD`             | Jump to a declaration of a symbol                                           |
| `gi`             | List all implementations of a symbol                                        | 
| `go`             | Jumps to a definition of the type of the symbol                             |
| `gr`             | Lists all references to the symbol                                          |
| `gs`             | Displays signature info about the symbol                                    |
| `<F2>`           | Renames all refs to the symbol under the cursor :help.vim.lsp.buf.rename()  |
| `<F3>`           | Format code in the current buffer                                           |
| `gl`             | Show diagnostics in a floating window                                       |
| `[d` and `]d`    | Move to the previous / next diagnostic in the current buffer                |

Note: use command `:LspRestart` to reset the LSP if the hightlighting gets off

## Installation

- You will have to install nvim: [INSTALL.md](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- Once installed, put these configuration files where nvim expects them. On linux this might be `~/.config/nvim`. `:h rtp` willl show you that `XDG_CONFIG_HOME` is the environment variable to set. 
- You will have to install Packer: [README.md](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart)
- Once installed, config files in place and `XDG_CONFIG_HOME` is pointed at the right place (you may need to set it in .bashrc or whatever shell you are using) - navigate to `/lua/unfinishedideas` and open `packer.lua` and run `:so` then `:PackerSync`.

## Making changes

- If you want to make changes to the plugins you will generally do that in `/lua/unfinishedideas/packer.lua`. Once you made your changes, be sure to shout it out with `:so` and then run `:PackerSync`
- Configure and set shortcuts for individual plugins in `/after/plugin/nameOfPlugin.lua`

## Troubleshooting

- Sometimes Treesitter will break - try running `:TSUpdate` to fix
- Sometimes the LSP will mess up the highlighting, use `:LspRestart` to fix it

