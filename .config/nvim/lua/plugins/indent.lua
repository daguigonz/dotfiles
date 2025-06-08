-- Archivo: ~/.config/nvim/lua/plugins/indent.lua
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = " ", -- Ocultar líneas de indentación normales
        tab_char = " ",
      },
      scope = {
        enabled = true, -- Solo mostrar el scope actual
        char = "│",
        show_start = false,
        show_end = false,
        injected_languages = false,
        highlight = { "IblScope" },
        priority = 1024,
        include = {
          node_type = {
            ["*"] = {
              "class",
              "function",
              "method",
              "^if",
              "^while",
              "^for",
              "^object",
              "^table",
              "arguments",
              "block",
              "jsx_element",
              "jsx_self_closing_element",
            },
          },
        },
      },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
  },
}
