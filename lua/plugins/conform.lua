return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      ruby = { "rubocop" },
      yaml = { "yamlfmt" },
      eruby = { "erb_format" },
    },
  },
}