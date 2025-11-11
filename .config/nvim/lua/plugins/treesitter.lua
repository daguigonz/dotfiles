return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- recomendación oficial
    build = ":TSUpdate",
    lazy = false,      -- 🚫 no lazy-load
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      -- Activar plegado con Tree-sitter
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.o.foldenable = true
      vim.o.foldlevelstart = 99
    end,
  },
}