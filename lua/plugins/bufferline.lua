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
                "<leader>bt",
                "<cmd>enew<cr>",
                desc = "New buffer",
            },
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
            -- {
            --     -- "<C-q>",
            --     "<leader>bq",
            --     "<cmd>bdelete<cr>",
            --     desc = "Close current buffer",
            -- },
            {
                "<leader>bq",
                function()
                    require("mini.bufremove").delete(0, false)
                end,
                desc = "Close current buffer",
            },
        },
    },
}
