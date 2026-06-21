return {
    {
        "akinsho/bufferline.nvim",
        version = "*",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            options = {
                diagnostics = "nvim_lsp",

                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true,
                    },
                },
            },
        },

        keys = {
            {
                -- "<S-h>",
                "<leader>bh",
                "<cmd>BufferLineCyclePrev<cr>",
                desc = "Previous buffer",
            },
            {
                -- "<S-l>",
                "<leader>bl",
                "<cmd>BufferLineCycleNext<cr>",
                desc = "Next buffer",
            },
            {
                -- "<C-q>",
                "<leader>bq",
                "<cmd>bdelete<cr>",
                desc = "Close current buffer",
            },
        },
    },
}
