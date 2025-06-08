return {
	-- {
	-- 	"almo7aya/neogruvbox.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.nord_disable_background = true
	-- 		vim.g.nord_italic = true
	-- 		vim.g.nord_bold = true
	-- 		vim.cmd("colorscheme neogruvbox")

	-- 		vim.g.nord_contrast = true
	-- 		vim.g.nord_borders = false
	-- 		vim.g.nord_uniform_diff_background = true
	-- 	end,
	-- },

-- 	{
-- 	   "scottmckendry/cyberdream.nvim",
-- 	    lazy = false,
-- 	    priority = 1000,
-- 	    config = function()
-- 	    	vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })
-- 	    end,
  -- },
  -- {
  -- 	 'everviolet/nvim', name = 'evergarden',
-- 	  priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
-- 	  opts = {
-- 	    theme = {
-- 	      variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
-- 	      accent = 'green',
-- 	    },
-- 	    editor = {
-- 	      transparent_background = true,
-- 	      sign = { color = 'none' },
-- 	      float = {
-- 	        color = 'mantle',
-- 	        invert_border = false,
-- 	      },
-- 	      completion = {
-- 	        color = 'surface0',
-- 	      },
-- 	    },
-- 	  }

  -- } 
	{
	  'datsfilipe/vesper.nvim',
	  lazy = false,
	  priority = 1000,
	  config = function()
	 
vim.cmd.colorscheme("vesper")
  vim.defer_fn(function()
    for _, group in ipairs({
      "Normal", "NormalNC", "NormalFloat", "FloatBorder",
      "VertSplit", "SignColumn", "EndOfBuffer",
      "MsgArea", "NvimTreeNormal", "TelescopeNormal",
      "TelescopeBorder", "Pmenu", "PmenuSel"
    }) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
  end, 50) -- espera 50ms


	  end,
	}
}