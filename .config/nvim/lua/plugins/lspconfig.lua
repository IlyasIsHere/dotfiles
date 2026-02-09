return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "clangd",
            "pyright",
            "cmake",
            "cssls",
            "tailwindcss",
            "html",
            "ts_ls",
            "vue_ls",
            "jsonls",
            "gopls",
        }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        {
            "neovim/nvim-lspconfig",
            dependencies = { "saghen/blink.cmp" },
        },
        {
            "j-hui/fidget.nvim",
            opts = {},
        },
    },
}
