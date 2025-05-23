-- ~/.config/nvim/lua/keybinds.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.o.mouse = "a"
vim.o.showtabline = 2

local telescope = require("telescope.builtin")

-- Define Find keybinds with descriptions
map("n", "<leader>fb", telescope.buffers, { desc = "Find buffer", unpack(opts) })
map("n", "<leader>fc", function()
    telescope.find_files({ cwd = vim.fn.expand("~/.config") })
end, { desc = "Find config file", unpack(opts) })

map("n", "<leader>fd", function()
    telescope.find_files({
        cwd = vim.fn.expand("~"),
        find_command = { "fd", "--type", "d", "--hidden", "--follow" },
    })
end, { desc = "Find directories (whole system)", unpack(opts) })

map("n", "<leader>ff", telescope.find_files, { desc = "Find files (current folder)", unpack(opts) })
map("n", "<leader>fF", function()
    telescope.find_files({ cwd = "/" })
end, { desc = "Find files (whole system)", unpack(opts) })

map("n", "<leader>fg", telescope.current_buffer_fuzzy_find, { desc = "Grep text (current buffer)", unpack(opts) })
map("n", "<leader>fG", telescope.live_grep, { desc = "Grep text (open buffers)", unpack(opts) })
map("n", "<leader>fr", telescope.oldfiles, { desc = "Recently open files", unpack(opts) })

-- Other global mappings
map("n", "<leader>w", ":w<CR>", { desc = "Write file", unpack(opts) })
map("n", "<leader>q", ":q<CR>", { desc = "Quit", unpack(opts) })
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight", unpack(opts) })
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer", unpack(opts) })
map("n", "<leader>r", ":so $MYVIMRC<CR>", { desc = "Reload config", unpack(opts) })
map("n", "<leader>n", ":enew<CR>", { desc = "New file", unpack(opts) })

-- Move between splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
