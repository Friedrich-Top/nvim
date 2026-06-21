return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',

        config = function()
            require("nvim-treesitter").install({
                "cpp",
                "python",
                "lua",
                "tsx",
                "typescript",
            })
        end,
    }
}
