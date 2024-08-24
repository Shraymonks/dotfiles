return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local onedarkpro = require 'lualine.themes.onedark'
      require('lualine').setup {
        extensions = { 'fugitive', 'fzf', 'lazy', 'nvim-tree' },
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
              sources = { 'coc', 'nvim_diagnostic' },
            },
          },
        },
      }
    end,
  },
}
