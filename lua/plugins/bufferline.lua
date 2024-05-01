return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		-- after = "catppuccin",
		after = "tokyonight",
		config = function()
			-- local mocha = require("catppuccin.palettes").get_palette("mocha")
			local colors = require("tokyonight.colors").setup()

			require("bufferline").setup({
				options = {
					numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
					indicator_icon = "▎",
					buffer_close_icon = "",
					modified_icon = "●",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					max_name_length = 30,
					max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
					tab_size = 21,
					diagnostics = false, -- | "nvim_lsp" | "coc",
					diagnostics_update_in_insert = false,
					offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
					show_buffer_icons = true,
					show_buffer_close_icons = false,
					show_close_icon = false,
					show_tab_indicators = true,
					persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
					separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
					enforce_regular_tabs = true,
					always_show_bufferline = false,
				},
				highlights = {
					fill = { bg = colors.bg_dark },
					group_label = { bg = colors.bg_dark },
					-- seperator = { fg = colors.bg_dark },
					-- seperator_visible = { fg = colors.bg_dark },
					-- seperator_selected = { fg = colors.bg_dark, bg = colors.bg },
					offset_separator = {
						bg = colors.bg_dark,
						bold = true,
					},
				},
				-- highlights = require("catppuccin.groups.integrations.bufferline").get({
				-- 	styles = { "italic", "bold" },
				-- 	custom = {
				-- 		all = {
				-- 			fill = { bg = "#1e1e2e" },
				-- 		},
				-- 	},
				-- }),
			})
		end,
	},
}
