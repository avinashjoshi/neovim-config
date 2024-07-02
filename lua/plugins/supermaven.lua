return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      disable_keymaps = true,
    })
    local completion_preview = require("supermaven-nvim.completion_preview")
    vim.keymap.set("i", "<CA-a>", completion_preview.on_accept_suggestion, { noremap = true, silent = true })
  end,
}
