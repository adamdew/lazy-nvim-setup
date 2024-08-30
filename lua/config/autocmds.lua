-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[highlight Visual guifg=white guibg=green]])
vim.cmd([[highlight Cursor guifg=black guibg=green]])
vim.cmd('set indentexpr cindent')

require("lspconfig").intelephense.setup({
  settings = {
    intelephense = {
      format = { braces = "k&r" },
      environment = { phpVersion = "8.1.0" },
      filetypes = {"php", "phtml", "blade"}
    },
  },
})
