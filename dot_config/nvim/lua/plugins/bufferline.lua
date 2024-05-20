return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          middle_mouse_command = 'bdelte! %d',
        },
      }
    end,
  },
}
