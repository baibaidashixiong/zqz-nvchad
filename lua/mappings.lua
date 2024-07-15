require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

local opt = {
  noremap = true, --  mapping will not be recursive
  silent = true,  -- the command will not display any output messages when executed
}

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- normal mode --
-- window
map("n", "<leader>sv", "<C-w>v") -- Horizontal add New Window
map("n", "<leader>sh", "<C-w>s") -- vertical add new window

-- plugins --
-- nvim-tree
map("n", "<leader>tr", ":NvimTreeToggle<CR>")

-- bufferline
  -- switch buffer
map("n", "<A-l>", ":bnext<CR>", opt)
map("n", "<A-h>", ":bprevious<CR>", opt)
  -- close buffer
map("n", "<C-w>", ":bd<CR>", opt)
map("n", "H", "<C-W>>", opt)
map("n", "L", "<C-W><", opt)
