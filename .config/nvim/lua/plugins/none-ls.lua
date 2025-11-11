return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Formateadores
                null_ls.builtins.formatting.stylua, -- Lua
                null_ls.builtins.formatting.prettier.with({
                    prefer_local = "node_modules/.bin",
                    condition = function(utils)
                        return utils.root_has_file({
                            ".prettierrc",
                            ".prettierrc.json",
                            ".prettierrc.js",
                            "prettier.config.js",
                            "package.json",
                        })
                    end,
                }),
                null_ls.builtins.formatting.black, -- Python
                null_ls.builtins.formatting.phpcbf, -- PHP Code Beautifier
                -- Diagnósticos
                null_ls.builtins.diagnostics.phpcs, -- PHP Code Sniffer
            },
        })
        -- Format shortcut
        vim.keymap.set("n", "<leader>1", vim.lsp.buf.format, { desc = "Format" })
    end,
}