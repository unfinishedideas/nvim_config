# UnfinishedIdeas' NVIM Config

- Based heavily on the Primeagen's nvim config, this will customize nvim to be more useful for me
- [Here is his video. Note: It is outdated now](https://youtu.be/w7i4amO_zaE?si=wcK-wCfFdXEkjh-d)
- [Here is a link to his repo](https://github.com/ThePrimeagen/init.lua)

## Packages installed

- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [toggleterm](https://github.com/akinsho/toggleterm.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [harpoon](https://github.com/ThePrimeagen/harpoon)
- [undotree](https://github.com/mbbill/undotree)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)

## No longer installed

- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)

## Useful things

- `:ToggleTerm` will open a terminal window for you!
- You can run `:lua ColorMyPencils("colorscheme-name")`, `:lua ForestPencils()`, `:lua RoseMyPencils()`, `:lua DarkPencils()` and `:lua LightPencils()` to change the color scheme of the editor
- Check out /lua/plugins/colors.lua for a list of colors / set up your own functions

## Custom nvim keybinds

`<leader>` key is set to `<space>`

| Key              | Description                                                                                                                               |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `J` or `K`       | Move highlighted lines up or down! (while in visual mode)                                                                                 |
| `<leader>p`      | When copy pasting over something: allow you to keep the copied string so you can keep pasting instead of changing to the highlighted word |
| `<leader>y`      | This let's you do <leader>y to yank into your system clipboard!                                                                           |
| `<leader>d`      | Deleting to void register in either visual or normal mode                                                                                 |
| `<leader>f`      | Format the lsp? It runs `vim.lsp.buf.format`                                                                                              |
| `<leader>s`      | Allows you to press space-s to start replacing the word you are on                                                                        |
| `<leader>x`      | Makes your file executable, so just press this to make a bash script usable instead of going out and using chmod                          |
| `<leader>e`      | Shows you a readout of the error message in a floating window (`vim.diagnostic.open_float`)                                               |
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
| `<C-S-J>`, `<C-S-K>` | Cycle left / right through Harpoon'd files (doesn't loop)               |

### Undotree

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `<leader>u`      | Toggle the Undotree window                                                  |

### Fugitive

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `<leader>p`      | Git push                                                                    |
| `<leader>P`      | Git pull -- rebase                                                          |
| `<leader>t`      | Git push -u origin                                                          |

### Lsp-Zero (no longer installed!)

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
- Once installed, put these configuration files where nvim expects them. On linux this might be `~/.config/nvim`. `:h rtp` will show you that `XDG_CONFIG_HOME` is the environment variable to set
- Make sure to install ripgrep for telescope to enable live file finding! `choco install ripgrep` [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- In order for Omnisharp to work you must have dot net installed and download a release from [Here!](https://github.com/OmniSharp/omnisharp-roslyn/releases)
- Additionally, you must set the absolute path to `Omnisharp.dll` in `init.lua`

## Making changes

- See instructions for adding plugins [at lazy.nvim](https://github.com/folke/lazy.nvim)
- Basically create the appropriate lua file and run `:Lazy` to see the menu where you can install them

## Troubleshooting

- Sometimes the LSP will mess up the highlighting, use `:LspRestart` to fix it
- Sometimes Treesitter will break - try running `:TSUpdate` to fix...
- When installing on windows, Treesitter HATES the compilers. See this [windows support page](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support) for help
- Sometimes you just need to go through and `:TSInstall {lang}` for each broken language you see having problems with `:checkhealth nvim-treesitter`
- Also note, you might need to install node.js (`choco install nodejs`). Be sure to `refreshenv`. I also suggest installing the `Zig` compiler for this on windows at least
- Treesitter-Cpp doesn't work with windows apparently... to be honest, you are just gonna have to `TSInstall {lang}` every parser it seems. I have remove the "ensure installed" parsers
