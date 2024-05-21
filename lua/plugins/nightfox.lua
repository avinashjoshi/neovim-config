-- https://github.com/EdenEast/nightfox.nvim
return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        colorblind = {
          enable = true,
          severity = {
            protan = 1,
          },
        },
      },
    })
    vim.cmd.colorscheme "nightfox"
  end
}
