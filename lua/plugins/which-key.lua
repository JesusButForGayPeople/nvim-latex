return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")
        wk.setup()
        wk.register({
            ["<leader>f"] = { name = "Find" },
        })

        -- Suppress which-key warnings
        local orig_notify = vim.notify
        vim.notify = function(msg, level, opts)
            if level == vim.log.levels.WARN and msg:match("which%-key") then return end
            orig_notify(msg, level, opts)
        end
    end,
}
