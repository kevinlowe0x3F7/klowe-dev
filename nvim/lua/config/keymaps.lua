-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "0", "^", { desc = "More intuitive 0, move to first nonblank character" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center screen after half scroll down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center screen after half scroll up" })