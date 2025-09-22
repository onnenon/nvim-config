return {
    "neovim/nvim-lspconfig",
    opts = {
        setup = {
            hls = function()
                return true
            end
        }
    }
}
