return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',

        config = function()
            require("nvim-treesitter").install({
                "bash",
                "c",
                "diff",
                "java",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "printf",
                "python",
                "query",
                "regex",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            })
        end,

        -- config = function()
        --     require("nvim-treesitter").install({
        --         "cpp",
        --         "java",
        --         "python",
        --         "lua",
        --         "tsx",
        --         "typescript",
        --     })
        -- end,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    }
}
