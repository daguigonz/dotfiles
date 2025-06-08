return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
opts = {
  view_options = {
    show_hidden = false, -- Oculta archivos ocultos (dotfiles) por defecto
    is_hidden_file = function(name, _)
      -- Mostrar explícitamente .storybook
      if name == ".storybook" then
        return false
      end
      -- Ocultar node_modules
      if name == "node_modules" then
        return true
      end
      -- Ocultar otros dotfiles
      return vim.startswith(name, ".")
    end,
  },
},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}