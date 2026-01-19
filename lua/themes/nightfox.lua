return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
        vim.opt.termguicolors = true
        vim.cmd("colorscheme nightfox")
    end,
}
