-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "RRethy/nvim-treesitter-endwise" },
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "bash",
        "embedded_template",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "ruby",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      endwise = { enable = true },
      autoinstall = true,
      highlight = { enable = true, disable = { "yaml", "ruby" } },
      indent = { enable = true },
    })
  end,
}
