vim.cmd.colorscheme("hate-of-nature")
require("keybinds")

-- Lazy Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Packages
require("lazy").setup({
    "lervag/vimtex",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "akinsho/bufferline.nvim",
})

-- File Tree
require("nvim-tree").setup({
    view = {
        width = 20,
        side = "left",
        relativenumber = true,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})

-- Tabs
require("bufferline").setup({
    options = {
        separator_style = { "", "" }, -- left and right separators
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            }
        },
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,
        diagnostics = "nvim_lsp",
    },
})

vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#99cc58", bg = "#22350a" })         -- inactive tab color
vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = "#A6E22E", bg = "#22350a" }) -- active tab color
vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible", { fg = "#5C842C", bg = "#22350a" })  -- visible tab color

-- vimtex
vim.g.vimtex_view_method = "zathura"
vim.g.maplocalleader = ","

vim.o.foldmethod = "expr"
vim.o.foldexpr = "vimtex#fold#level(v:lnum)"
vim.o.foldtext = "vimtex#fold#text()"
vim.o.foldlevel = 2

require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        disable = { "latex", },
    },
})

-- Minimal lsp config
local lspconfig = require("lspconfig")
lspconfig.texlab.setup {}

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gR", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    end,
})

-- nvim-cmp
local cmp = require("cmp")
cmp.setup({
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
    }),
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-l>"] = cmp.mapping.confirm({ select = true }),
    }),
})
