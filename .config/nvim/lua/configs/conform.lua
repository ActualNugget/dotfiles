local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_organize_imports", "ruff_fix", "ruff_format" },
    fish = { "fish_indent" },
    typescript = { "biome-check" },
    typescriptreact = { "biome-check" },
    javascript = { "biome-check" },
    javascriptreact = { "biome-check" },
    css = { "biome-check" },
    html = { "biome-check" },
    json = { "biome-check" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
