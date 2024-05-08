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
- Install more themes in `/lua/ptronic/packer.lua`

## Custom Keybinds for Plugins

`<leader>` key is set to `<space>`

### General

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

## Making changes

- If you want to make changes to the plugins you will generally do that in `/lua/ptronic/packer.lua`. Once you made your changes, be sure to shout it out with `:so` and then run `:PackerSync`
- Configure and set shortcuts for individual plugins in `/after/plugin/nameOfPlugin.lua`

