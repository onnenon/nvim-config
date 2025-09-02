return {{
    'mrcjkb/haskell-tools.nvim',
    version = '^6', -- Recommended
    config = function()
        local wk = require("which-key")

        local ht = require('haskell-tools')
        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {
            noremap = true,
            silent = true,
            buffer = bufnr
        }

        wk.add({{
            "<leader>cz",
            ht.repl.toggle,
            desc = "Toggle a GHCi repl",
            opts
        }, {
            "<leader>cZ",
            ht.repl.quit,
            desc = "Quit GHCi repl",
            opts
        }})
        require('telescope').load_extension('ht')
    end,
    lazy = false -- This plugin is already lazy
}}
