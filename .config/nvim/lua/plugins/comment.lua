return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
        -- gc → Comenta la línea seleccionada.
        -- gb → Comenta en bloque.
        -- gcc → Comenta/descomenta una línea.
        -- gcap → Comenta un párrafo.
    end,
}
