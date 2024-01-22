local options = {
    lsp_fallback = true,

    formatters_by_ft = {
        python = { "black" },
        typescript = { "ts-standard" },
    },
}

require("conform").setup(options)
