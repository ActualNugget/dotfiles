require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Telescope
-- change find all files to exclude .git
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true find_command=rg,--files,--hidden,--glob,!**/.git/*<CR>",
  { desc = "telescope find all files" }
)
