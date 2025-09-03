return {{"mrcjkb/neotest-haskell"}, {"jfpedroza/neotest-elixir"}, {
    "nvim-neotest/neotest",
    dependencies = {"nvim-neotest/nvim-nio", "nvim-lua/plenary.nvim", "antoinemadec/FixCursorHold.nvim",
                    "nvim-treesitter/nvim-treesitter"},
    opts = {
        -- Can be a list of adapters like what neotest expects,
        -- or a list of adapter names,
        -- or a table of adapter names, mapped to adapter configs.
        -- The adapter will then be automatically loaded with the config.
        adapters = {require("neotest-haskell"), require("neotest-elixir"), require("neotest-python")}
    }
}}
