require "nvchad.mappings"

local map = vim.keymap.set

require('gitsigns').setup{
  preview_config = {
    border = "rounded",   -- 可选: "single", "double", "rounded", "solid"
    style = "minimal",
  },
  on_attach = function(bufnr)
    local gitsigns = require('gitsigns')


    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    map('n', '<leader>gb', function()
      gitsigns.blame_line({ full = true })
    end, { desc = "Blame line" })

    map('n', '<leader>gd', gitsigns.diffthis, { desc = "Git Diff" })

    map('n', '<leader>gD', function()
      gitsigns.diffthis('~')
    end, { desc = "Git Diff Head~" })

    map('n', '<leader>gq', gitsigns.setqflist, { desc = "Hunks → Quickfix list" })
  end
}
