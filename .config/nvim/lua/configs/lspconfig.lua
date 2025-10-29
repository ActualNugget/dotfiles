require("nvchad.configs.lspconfig").defaults()

local servers = { "ruff", "biome" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
