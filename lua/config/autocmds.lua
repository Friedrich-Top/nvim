local group = vim.api.nvim_create_augroup("user_filetype_settings", {
    clear = true,
})

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = { "c", "cpp" },

    callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.softtabstop = 4

        vim.opt_local.autoindent = true
        vim.opt_local.smartindent = false
        vim.opt_local.cindent = true
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = lsp_group,

    callback = function(event)
        local function map_opts(description)
            return {
                buffer = event.buf,
                silent = true,
                desc = description,
            }
        end

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, map_opts("LSP: Go to definition"))
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, map_opts("LSP: Go to declaration"))

        vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover({
                border = "single",
            })
        end, map_opts("LSP: Hover documentation"))

        vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, map_opts("LSP: Signature help"))

        vim.keymap.set("n", "ga", vim.lsp.buf.code_action, map_opts("LSP code action"))
    end,
})

vim.api.nvim_create_autocmd("CursorHold", {
    group = lsp_group,

    callback = function()
        vim.diagnostic.open_float(nil, {
            focus = false,
            scope = "cursor",
            border = "single",
            source = true,
            header = "",
            prefix = "",
        })
    end,
})

-- vim.api.nvim_create_autocmd("FileType", {
--     group = group,
--
--     pattern = {
--         "cpp",
--         "java",
--         "python",
--         "lua",
--         "typescript",
--         "typescriptreact",
--     },
--
--     callback = function(event)
--     vim.treesitter.start(event.buf)
--     end,
-- })
