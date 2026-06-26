local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"} )
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none"} )
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none"} )
end

return {
    -- Using Lazy
    -- {
    --     "navarasu/onedark.nvim",
    --     priority = 1000, -- make sure to load this before all the other start plugins
    --     config = function()
    --         require('onedark').setup  {
    --             -- Main options --
    --             style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    --             transparent = false,  -- Show/hide background
    --             term_colors = true, -- Change terminal color as per the selected theme style
    --             ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    --             cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    --             -- toggle theme style ---
    --             toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    --             toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    --             -- Change code style ---
    --             -- Options are italic, bold, underline, none
    --             -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    --             code_style = {
    --                 comments = 'italic',
    --                 keywords = 'none',
    --                 functions = 'bold',
    --                 strings = 'none',
    --                 variables = 'none'
    --             },

    --             -- Lualine options --
    --             lualine = {
    --                 transparent = false, -- lualine center bar transparency
    --             },

    --             -- Custom Highlights --
    --             colors = {}, -- Override default colors
    --             highlights = {}, -- Override highlight groups

    --             -- Plugins Config --
    --             diagnostics = {
    --                 darker = true, -- darker colors for diagnostic
    --                 undercurl = true,   -- use undercurl instead of underline for diagnostics
    --                 background = true,    -- use background color for virtual text
    --             },
    --         }

    --         require('onedark').load()
    --     end
    -- },

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
