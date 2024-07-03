return {
  "nvim-neotest/neotest",
  dependencies = {
    "vim-test/vim-test",
    "nvim-neotest/nvim-nio",
    "nvim-neotest/neotest-vim-test",
    "nvim-lua/plenary.nvim",
    "nvim-neotest/neotest-plenary",
    "mfussenegger/nvim-dap",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = { adapters = { "neotest-vim-test", "neotest-plenary" } },
}
