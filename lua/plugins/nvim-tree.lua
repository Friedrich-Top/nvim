local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.map.on_attach.default(bufnr)

    -- custom mappings
    vim.keymap.set("n", "l", function() api.node.open.edit() end, opts("Open and focus"))
    vim.keymap.set("n", "<S-Tab>", "<C-w>p", opts("Focus previous window"))
    vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent,        opts("Up"))
    vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))
end

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>t", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree", },
        { "<S-Tab>", "<cmd>NvimTreeFocus<CR>", desc = "Toggle file tree", },
    },

    config = function()
        require("nvim-tree").setup({
            on_attach = my_on_attach,
        })
    end,
}

