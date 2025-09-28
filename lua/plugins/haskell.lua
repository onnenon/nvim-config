return {
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^6", -- Recommended
    config = function()
      local ht = require("haskell-tools")
      local bufnr = vim.api.nvim_get_current_buf()
      local opts = {
        noremap = true,
        silent = true,
        buffer = bufnr,
      }
      require("telescope").load_extension("ht")
    end,
    lazy = false, -- This plugin is already lazy
  },
  {
    "mrcjkb/haskell-snippets.nvim",
    enabled = false,
  },
}
