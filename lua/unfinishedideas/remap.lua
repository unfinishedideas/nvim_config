vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)        -- navigate folders faster!
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- quick format!

-- move highlighted lines around! (in visual mode)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")       -- allows cursor to remain in place while doing J (join line below)
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- allow ctr d /u with half page jumping to keep the cursor in same place
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")       -- allow search terms to stay in the middle
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]]) -- when copy pasting over something, allow you to keep the copied string so you can keep pasting instead of changing to the highlighted word
vim.keymap.set("n", "Q", "<nop>")          -- don't ever press capital Q haha I have no idea what it did

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --allows you to press space-s to start replacing the word you are on. Very useful! (instead of :s/og/new/g)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })              -- makes your file executable, so just press this to make a bash script usable instead of going out and chmod

-- harpoon shortcuts
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-S-J>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-K>", function() harpoon:list():next() end)


-- Unused key commands from Primeagen ------------------------------------------
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")	-- allows you to press Ctrl-f and switch projects (no tmux on windows)

-- pimragen made these for twitch, I dunno what they do
--vim.keymap.set("n", "<leader>vwm", function()
--require("vim-with-me").StartVimWithMe()
--end)
--vim.keymap.set("n", "<leader>svwm", function()
--require("vim-with-me").StopVimWithMe()
--end)


-- next greatest remap ever : asbjornHaland
-- This doesn't seem to work on windows :(
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])	-- this let's you do <leader>y to yank into your system clipboard!
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])	-- deleting to void register in either visual or normal mode (i dont know what that means)

-- This is going to get me cancelled
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")	-- quick fix navigation keys
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- I dunno what these do yet
-- vim.keymap.set("n","<leader>ee","oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
