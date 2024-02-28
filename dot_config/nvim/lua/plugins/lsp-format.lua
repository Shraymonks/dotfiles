return {
  {
    'lukas-reineke/lsp-format.nvim',
    config = function()
      vim.cmd [[cabbrev wq execute "Format sync" <bar> wq]]
      require('lsp-format').setup {}
    end,
  },
}
