return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup()
    end,
  },
  {
    "hiphish/rainbow-delimiters.nvim",
    config = function()
      require("rainbow-delimiters.setup").setup()
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require("ibl.hooks")

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
      end)

      vim.g.rainbow_delimiters = { highlight = highlight }

      require("ibl").setup({
        indent = {
          char = "", -- Línea delgada para indentación
        },
        scope = {
          enabled = true, -- Solo en la línea activa
          show_start = false,
          show_end = false,
          include = {
            node_type = {
              "block",
              "return_statement",
              "if_statement",
              "for_statement",
              "while_statement",
              "function",
              "method",
              "class",
              "jsx_element",
              "tsx_element",
              "tag",
            },
          },
        },
        exclude = {
          filetypes = { "dashboard", "help", "NvimTree", "terminal" },
          buftypes = { "terminal", "nofile" },
        },
      })

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")

      config.setup({
        auto_install = true,
        ensure_installed = {
          "bash",
          "css",
          "html",
          "javascript",
          "json",
          "lua",
          "python",
          "typescript",
          "tsx",
          "vue",
          "yaml",
          "c_sharp",
          "rust",
          "dockerfile",
          "json",
          "jsdoc",
          "jsonc",
          "markdown",
          "markdown_inline",
          "proto",
          "sql",
          "toml",
          "xml",
        },
        indent = { enabled = true },
        highlight = {
          enabled = true,
        },
      })
    end,
  },
}
