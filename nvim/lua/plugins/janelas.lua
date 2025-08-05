return {
	'akinsho/bufferline.nvim',

	config = function()
		require('bufferline').setup{
			options = {
				themable = true,
				show_buffer_close_icons = true,
				separator_style = "padded_slope",
				show_close_icon = true,
				themeguicolor = true,
			}
		}
	end
}
