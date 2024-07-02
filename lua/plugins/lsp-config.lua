return {
  {
    -- https://github.com/williamboman/mason.nvim
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    -- https://github.com/williamboman/mason-lspconfig.nvim
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
        ensure_installed = { "lua_ls", "ruby_lsp", "yamlls" },
      })
    end,
  },
  {
    -- https://github.com/neovim/nvim-lspconfig
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      "mason.nvim",
      { "williamboman/mason-lspconfig.nvim", config = function() end },
    },
    opts = {
      ---@type lspconfig.options
      servers = {
        -- disable solargraph from auto running when you open ruby files
        solargraph = {
          autostart = false,
        },
        -- ruby_lsp will be automatically installed with mason and loaded with lspconfig
        ruby_lsp = {},
      },
    },
    -- config = function()
    --   local lspconfig = require("lspconfig")
    --   lspconfig.lua_ls.setup({})
    --   lspconfig.ruby_lsp.setup({})
    --   -- lspconfig.html.setup({})
    --   lspconfig.yamlls.setup({})
    --   -- lspconfig.solargraph.setup({})
    --
    --   vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
    -- end,
  },
}
