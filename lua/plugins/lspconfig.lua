return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,
    },

    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        opts = {
            ensure_installed = {
                "clangd",
                "jdtls",
                "pyright",
                "rust_analyzer",
                "lua_ls",
                "ts_ls",
                "html",
                "jsonls",
                "bashls"
            },

            -- automatic_enable = true,
            automatic_enable = {
                "clangd",
                "jdtls",
                "pyright",
                "rust_analyzer",
                "lua_ls",
                "ts_ls",
                "html",
                "jsonls",
                "bashls"
            },
        },
    },
}
