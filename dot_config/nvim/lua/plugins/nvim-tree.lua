return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    -- version = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function()
      vim.keymap.set(
        'n',
        '<C-n>',
        '<cmd>NvimTreeToggle<cr>',
        { silent = true, noremap = true }
      )
      require('nvim-tree').setup {
        disable_netrw = false,
        hijack_netrw = true,
      }
    end,
  },
}
