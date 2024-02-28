return {
  {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup()
    end,
    init = function()
      vim.g.skip_ts_context_commentstring_module = true
    end,
  },
}
