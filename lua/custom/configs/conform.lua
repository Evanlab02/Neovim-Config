local options = {
    lsp_fallback = true,

    formatters_by_ft = {
        python = { "black" },
    },
}

require("conform").setup(options)
