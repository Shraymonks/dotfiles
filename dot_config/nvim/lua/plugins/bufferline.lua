return {
  {
    'akinsho/bufferline.nvim',
    version = 'v3.*',
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
