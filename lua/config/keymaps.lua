-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--Centered half page up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Moving highlighted sections easily
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>ot", vim.cmd.ObsidianToday, {desc = "open daily note for today."})
vim.keymap.set("n", "<leader>oy", vim.cmd.ObsidianYesterday, {desc = "open daily note for yesterday."})
vim.keymap.set("n", "<leader>om", vim.cmd.ObsidianTomorrow, {desc = "open daily note for tomorrow."})
vim.keymap.set("n", "<leader>oo", vim.cmd.ObsidianBacklinks, {desc = "open note backlinks"})

vim.keymap.set("v", "<leader>nn", 'y/<C-r>"<cr>', {desc = "search for next occurance of selection"})

vim.keymap.set("n", "<leader>p", '"0p', {desc = "paste last yanked text"})
