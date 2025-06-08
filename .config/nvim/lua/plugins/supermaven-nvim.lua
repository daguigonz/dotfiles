return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-]>",
        next_suggestion = "<C-n>",
        prev_suggestion = "<C-p>",
      },
    })

    -- Configuramos el estilo visual del texto fantasma de sugerencia
    vim.api.nvim_set_hl(0, "SupermavenSuggestion", { link = "Comment" })
  end,
}
