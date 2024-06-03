-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
        source_selector = {
            winbar = true,
            statusline = true
        }
    })
    vim.keymap.set('n', '<AS-n>', ':Neotree filesystem toggle left<CR>')
    vim.keymap.set('n', '<leader><leader>', ':Neotree filesystem toggle left<CR>')
  end
}
