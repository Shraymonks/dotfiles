return {
  {
    'olimorris/onedarkpro.nvim',
    config = function()
      require('onedarkpro').setup {
        options = {
          cursorline = true,
          highlight_inactive_windows = true,
        },
      }
      vim.cmd 'colorscheme onedark'
    end,
    lazy = false,
    priority = 1000,
  },
}
