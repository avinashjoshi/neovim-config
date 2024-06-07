-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      -- ensure_installed = { "lua", "vim", "javascript", "html", "ruby" },
      autoinstall = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
