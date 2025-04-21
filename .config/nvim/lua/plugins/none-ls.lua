return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- Formateadores
                null_ls.builtins.formatting.stylua, -- Lua
                null_ls.builtins.formatting.prettier, -- JS, CSS, HTML
                null_ls.builtins.formatting.black, -- Python
                null_ls.builtins.formatting.isort, -- Python
                null_ls.builtins.formatting.phpcbf, -- PHP Code Beautifier

                -- Diagnósticos
                null_ls.builtins.diagnostics.pylint, -- Python
                null_ls.builtins.diagnostics.phpcs, -- PHP Code Sniffer
            },
        })

        -- Format shortcut
        vim.keymap.set("n", "<leader>1", vim.lsp.buf.format, { desc = "Format" })
    end,
}
