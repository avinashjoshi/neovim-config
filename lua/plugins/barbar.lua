-- https://github.com/romgrk/barbar.nvim
return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    -- Move to previous/next
    -- map("n", "<cs-h>", "<Cmd>BufferPrevious<CR>", opts)
    -- map("n", "<cs-l>", "<Cmd>BufferNext<CR>", opts)
    -- Move to previous/next
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    map('n', '<A-p>', '<Cmd>BufferPick<CR>', opts)
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    insert_at_start = true,
    -- …etc.
  },
}
