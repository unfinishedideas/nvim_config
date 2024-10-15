return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()

        -- Many times the c compiler in c is messed up. You can try: zig, gcc or clang.
        -- You will have to delete nvim-data/lazy/nvim-treesitter to try to refresh each time - Pete
        -- If you are having troubles: try to TSInstall {lang} for each language
        -- zig is generally recommended, install it with scoop -> https://www.sanketsjournal.com/articles/20240710-setup-neovim-treesitter-on-windows-using-scoop-and-zig
	    -- require 'nvim-treesitter.install'.compilers = { 'zig', 'clang', 'gcc' },

        require("nvim-treesitter.configs").setup({
            -- set the compilers for windows see above
            compilers = { 'zig', },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
            auto_install = false,

            indent = {
                enable = true
            },

            --[[
            -- A lot of these settings were giving me problems on windows - pete
            -- A list of parser names, or "all"
            ensure_installed = {
                "javascript", "typescript", "rust",
                "bash", "c_sharp", "json", "lua"
            },
            highlight = {
                -- `false` will disable the whole extension
                enable = true,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                -- additional_vim_regex_highlighting = { "markdown" },
            },
            ]]
        })

        local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        treesitter_parser_config.templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = {"src/parser.c", "src/scanner.c"},
                branch = "master",
            },
        }

        vim.treesitter.language.register("templ", "templ")
    end
}

