return {
	"nvim-tree/nvim-tree.lua",
	opts = {},
	config = function(_, opts)
		require("nvim-tree").setup(opts)

		-- Transparencia forzada
		vim.cmd([[ highlight NvimTreeNormal guibg=NONE ctermbg=NONE ]])
		vim.cmd([[ highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE ]])
		vim.cmd([[ highlight NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE ]])
		vim.cmd([[ highlight NvimTreeWinSeparator guibg=NONE ctermbg=NONE ]])
	end,
}
