return {
  {
    'folke/trouble.nvim',
    opts = {},
    dependencies = 'nvim-tree/nvim-web-devicons',
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
      {
        'gD',
        '<cmd>Trouble lsp_declarations toggle focus=true<cr>',
        desc = 'LSP Declarations',
      },
      {
        'gd',
        '<cmd>Trouble lsp_definitions toggle focus=true<cr>',
        desc = 'LSP Definitions',
      },
      {
        'gi',
        '<cmd>Trouble lsp_implementations toggle focus=true<cr>',
        desc = 'LSP Implementations',
      },
      {
        'gr',
        '<cmd>Trouble lsp_references toggle focus=true<cr>',
        desc = 'LSP References',
      },
      {
        'gt',
        '<cmd>Trouble lsp_type_definitions toggle focus=true<cr>',
        desc = 'LSP Type Definitions',
      },
    },
  },
}
