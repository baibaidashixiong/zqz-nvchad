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

-- Search in selected folder
local function search_in_selected_folder()
  local api = require("nvim-tree.api")
  local node = api.tree.get_node_under_cursor()
  -- warning: relative_path func is different from absolute_path, can't be used here.
  local absolute_path = node.absolute_path
  local tree_root = vim.fn.getcwd()
  local relative_path = vim.fn.fnamemodify(absolute_path, ":." .. tree_root)
  local folder_path = relative_path
  if node.type == "file" then
    folder_path = vim.fn.fnamemodify(relative_path, ":h")
  end
  require("telescope.builtin").live_grep({
    cwd = folder_path,
    prompt_title = "Search in: " .. folder_path,
  })
end


vim.keymap.set("n", "<leader>fq", search_in_selected_folder, { desc = "grep in current dictionary." })
