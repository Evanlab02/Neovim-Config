local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "python" },
})

lspconfig.eslint.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end,
})

lspconfig.tsserver.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lspconfig.cssls.setup ({
    capabilities = capabilities,
    on_attach = on_attach,
})
