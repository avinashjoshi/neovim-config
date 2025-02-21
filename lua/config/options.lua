-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- Display
opt.listchars = {
  space = "⋅",
  eol = "↴",
  tab = "▸ ",
  trail = "·",
  extends = "❯",
  precedes = "❮",
  nbsp = "␣",
}
opt.wrap = true
opt.linebreak = true -- Break lines at word boundaries
opt.showbreak = "↪ " -- Show character at line break
opt.scrolloff = 8 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context
opt.colorcolumn = "120" -- Line length marker

-- Editing
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Insert indents automatically
opt.joinspaces = false -- No double spaces with join
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

-- Search
opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Don't ignore case with capitals
opt.inccommand = "split" -- Preview substitutions live

-- Files
opt.autowrite = true -- Auto save before :next, :make etc.
opt.swapfile = false -- Don't use swapfile
opt.backup = false -- Don't create backup files
opt.undofile = true -- Persistent undo
opt.undolevels = 10000

-- UI
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.splitkeep = "screen" -- Reduce scroll during window split
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

-- System
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.mouse = "a" -- Enable mouse mode
opt.updatetime = 200 -- Faster completion
opt.timeoutlen = 300 -- Speed up key sequences

-- LSP Server to use for Ruby.
-- Set to "solargraph" to use solargraph instead of ruby_lsp.
vim.g.lazyvim_ruby_lsp = "ruby_lsp"
vim.g.lazyvim_ruby_formatter = "rubocop"
