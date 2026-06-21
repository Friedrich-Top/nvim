return {
    "akinsho/toggleterm.nvim",
    version = "*",

    opts = {
        direction = "float",

        start_in_insert = true,
        persist_mode = true,
        close_on_exit = true,
        shade_terminals = false,

        insert_mappings = true,
        terminal_mappings = true,

        float_opts = {
            border = "single",
        },
    },

    keys = { { "<C-`>", "<cmd>ToggleTerm<cr>", mode = "n", desc = "Toggle terminal", }, },

    config = function(_, opts)
        require("toggleterm").setup(opts)

        local terminal_group =
        vim.api.nvim_create_augroup("user_toggleterm_keymaps", {
            clear = true,
        })

        vim.api.nvim_create_autocmd("TermOpen", {
            group = terminal_group,
            pattern = "term://*toggleterm#*",

            callback = function(args)
                vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { buffer = args.buf, silent = true, desc = "Terminal normal mode", })
            end,
        })
    end,
}
