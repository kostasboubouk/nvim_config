return {
	"akinsho/bufferline.nvim",
	version = "*",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				mode = "buffers",
				style_preset = bufferline.style_preset.default,
				themable = true,
				left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
				indicator = {
					style = "icon",
				},
				buffer_close_icon = "󰅖",
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or ""
					return " " .. icon .. count
				end,
        separator_style = 'padded_slant'
			},
		})
	end,
}
