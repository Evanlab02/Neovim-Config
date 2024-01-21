local plugins = {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "pyright",
                "black",
                "flake8",
                "mypy"
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        config = function()
            require "custom.configs.conform"
        end,
    },
    {
        "mfussenegger/nvim-lint",
    }
}
return plugins
