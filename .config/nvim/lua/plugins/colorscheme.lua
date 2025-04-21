return {
  "nyoom-engineering/oxocarbon.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    vim.opt.background = "dark" -- or "light" xxxx

    vim.cmd("colorscheme oxocarbon")

    -- Transparencia
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  end,
}
