return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
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

        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                local path = vim.fn.argv(0)
                if path ~= "" and vim.fn.isdirectory(path) == 1 then
                    require("nvim-tree.api").tree.open()
                end
            end,
        })
    end,
}
