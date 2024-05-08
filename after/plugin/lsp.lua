local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
-- me: you can also find servers here https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#installation
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    "rust_analyzer",
    "pyright",
    "omnisharp",
    "eslint",
    "clangd",
    "lua_ls",
    "marksman",
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
