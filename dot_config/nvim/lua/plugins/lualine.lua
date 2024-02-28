return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local onedarkpro = require 'lualine.themes.onedark'
      require('lualine').setup {
        extensions = { 'fugitive', 'nvim-tree' },
        options = {
          globalstatus = true,
          theme = onedarkpro,
        },
        sections = {
          lualine_b = {
            'branch',
            'diff',
            {
              'diagnostics',
              sources = { 'ale', 'coc', 'nvim_diagnostic' },
            },
          },
        },
      }
    end,
  },
}
