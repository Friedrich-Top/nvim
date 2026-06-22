local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"} )
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none"} )
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none"} )
end

return {
    -- Lazy
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
        config = function()
            require("onedarkpro").setup({
                styles = {
                    types = "NONE",
                    methods = "NONE",
                    numbers = "NONE",
                    strings = "NONE",
                    comments = "italic",
                    keywords = "bold",
                    constants = "NONE",
                    functions = "NONE",
                    operators = "NONE",
                    variables = "NONE",
                    parameters = "NONE",
                    conditionals = "NONE",
                    virtual_text = "NONE",
                },
                options = {
                    cursorline = true,
                    transparency = false
                }
            })
            vim.cmd("colorscheme onedark")
            -- enable_transparency()
        end,
    },
    -- the colorscheme should be available when starting Neovim
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false, -- make sure we load this during startup if it is your main colorscheme
    --     priority = 1000, -- make sure to load this before all the other start plugins
    --     config = function()
    --         -- load the colorscheme here
    --         vim.cmd([[colorscheme tokyonight]])
    --         enable_transparency()
    --     end,
    -- },

    {
        "catgoose/nvim-colorizer.lua",
        opts = {
            options = {
                parsers = {
                    names = {
                        enable = false,
                    },
                },
            },
        }
    },
}
