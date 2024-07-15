require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!



-- nvim-tree set
require("nvim-tree").setup({
	-- needed by project-----
  hijack_cursor = true,
	update_focused_file = {
		enable = true,
	},
	filters = {
		dotfiles = true,
		-- custom = { "" },
	},
  git = {
    ignore = false,
  },
})
