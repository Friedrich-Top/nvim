return {
    {
        "voldikss/vim-floaterm",
        lazy = false,

        init = function()
            vim.g.floaterm_width = 0.85
            vim.g.floaterm_height = 0.85
            vim.g.floaterm_wintype = "float"
            vim.g.floaterm_position = "center"
            vim.g.floaterm_opener = "edit"
        end,

        config = function()
            -- local map = vim.keymap.set

            -- map("n", "<C-c>", "<cmd>FloatermToggle<cr>", {
            --     silent = true,
            --     desc = "Toggle Terminal",
            -- })

            -- map("n", "<C-q>", "<cmd>FloatermKill<cr>", {
            --     silent = true,
            --     desc = "Kill Terminal",
            -- })

            vim.keymap.set("n", "<C-m>", "<cmd>FloatermNew yazi<cr>", {
                silent = true,
                desc = "Open yazi",
            })

            -- map("t", "<Esc><Esc>", [[<C-\><C-n>]], {
            --     silent = true,
            --     desc = "Exit Terminal mode",
            -- })
        end,
    },
}
