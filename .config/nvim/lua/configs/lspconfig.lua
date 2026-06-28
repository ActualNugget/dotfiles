require("nvchad.configs.lspconfig").defaults()

local servers = { "basedpyright", "ruff", "biome", "gdscript" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
})
