return {
    "akinsho/bufferline.nvim",
    config = function()
        require("bufferline").setup({
            options = {
                separator_style = { "", "" },
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

        vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#99cc58", bg = "#22350a" })
        vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = "#A6E22E", bg = "#22350a" })
        vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible", { fg = "#5C842C", bg = "#22350a" })
    end,
}
