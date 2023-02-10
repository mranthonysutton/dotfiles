require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the four listed parsers should always be installed)
    ensure_installed = { "javascript", "typescript", "latex", "css", "go", "html", "markdown", "scss", "python", "lua", "vim", "help", "rust" },

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        additional_vim_regex_highlighting = false,
    },

    autotag = {
      enable = true
    },
}
