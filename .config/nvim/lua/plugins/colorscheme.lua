return {

	-- 1. Tu tema personalizado
	{
		dir = "/Users/danielaguirre/www/me/onechaco.nvim",
		-- "daguigonz/onechaco.nvim",

		dev = true,
		lazy = false,
		--

		name = "onechaco",
		priority = 1000,
		config = function()
			vim.defer_fn(function()
				for _, group in ipairs({
					"NormalNC",
					"NormalFloat",
					"FloatBorder",
					"VertSplit",
					"SignColumn",
					"EndOfBuffer",
					"MsgArea",
					"NvimTreeNormal",
					"TelescopeNormal",
					"TelescopeBorder",
					"Pmenu",
					"PmenuSel",
				}) do
					vim.api.nvim_set_hl(0, group, { bg = "none" })
				end
			end, 50) -- espera 50ms

			require("onechaco").setup({
				style = "dark",
				transparent = true,
				bold = {
					keywords = true,
					specials = true, -- Ejemplo: desactiva la negrita para los especiales
				},
			})

			vim.cmd.colorscheme("onechaco")
		end,
	},
}
