return {{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            auto_integrations = true,
            term_colors = true
        })
        vim.cmd.colorscheme "catppuccin"
    end
}, {
    "akinsho/bufferline.nvim",
    after = "catppuccin",
    config = function()
        require("bufferline").setup {
            highlights = require("catppuccin.groups.integrations.bufferline").get_theme()
        }
    end
}}
