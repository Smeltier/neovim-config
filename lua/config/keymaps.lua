-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---@diagnostic disable: undefined-global

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--- Delete a word backwards
keymap.set("n", "dw", "vb_d")

--- New tab
keymap.set("n", "te", "<Cmd>tabedit<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- --- Line moving - Normal Mode
-- keymap.set("n", "<leader>k", function()
--   local n = vim.v.count1
--   vim.cmd("move .-" .. n)
--   vim.cmd("normal ==")
-- end, opts)
--
-- keymap.set("n", "<leader>j", function()
--   local n = vim.v.count1
--   vim.cmd("move ." .. n)
--   vim.cmd("normal ==")
-- end, opts)
--
-- --- Line moving - Visual Mode
-- keymap.set("v", "<leader>k", function()
--   local n = vim.v.count1
--   vim.cmd("move .-" .. n)
--   vim.cmd("normal ==")
-- end, opts)
--
-- keymap.set("v", "<leader>j", function()
--   local n = vim.v.count1
--   vim.cmd("move ." .. n)
--   vim.cmd("normal ==")
-- end, opts)
