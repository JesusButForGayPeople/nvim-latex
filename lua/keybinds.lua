-- ~/.config/nvim/lua/keybinds.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key (optional, if not set elsewhere)
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.o.mouse = "a"
vim.o.showtabline = 2

-- Quick save
map("n", "<leader>w", ":w<CR>", opts)

-- Quit
map("n", "<leader>q", ":q<CR>", opts)

-- Clear search highlight
map("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Open file explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Move between splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Reload config
map("n", "<leader>r", ":so $MYVIMRC<CR>", opts)

--new file
map("n", "<leader>n", ":enew<CR>", opts)

-- Example LSP keybind (optional if not defined in LspAttach)
-- map("n", "gd", vim.lsp.buf.definition, opts)

-- Add more keybinds here...
