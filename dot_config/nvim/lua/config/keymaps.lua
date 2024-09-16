-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>fs", ":w<cr>", { desc = "Write buffer" })
map("n", "<leader>x", ":b# | bd #<cr>", { desc = "Delete buffer" })

map("n", "<leader>fR", ":FlutterRestart<cr>", { desc = "Flutter restart" })
