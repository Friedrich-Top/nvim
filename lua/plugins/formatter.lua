return {
    {
        'stevearc/conform.nvim',
        opts = {
            formatters_by_ft = {
                cpp = { "clang-format", lsp_format = "fallback" },
                lua = { "stylua", lsp_format = "fallback" },
                -- Conform will run multiple formatters sequentially
                python = { "isort", "black", lsp_format = "fallback" },
                -- You can customize some of the format options for the filetype (:help conform.format)
                rust = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        },

        keys = {
            {
                "<leader>cF",
                function()
                    require("conform").format({ async = true })
                end,
                mode = { "n", "x" },
                desc = "Format buffer",
            }
        }
    },

    -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        }
    }

}
