return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      local null_ls = require 'null-ls'
      null_ls.setup {
        on_attach = function(client)
          require('lsp-format').on_attach(client)
        end,
        sources = {
          null_ls.builtins.code_actions.gitsigns,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.prettierd.with {
            filetypes = {
              'css',
              'graphql',
              'handlebars',
              'html',
              'javascript',
              'javascriptreact',
              'json',
              'jsonc',
              'less',
              'markdown',
              'markdown.mdx',
              'scss',
              'svelte',
              'typescript',
              'typescriptreact',
              'vue',
              'yaml',
            },
          },
          null_ls.builtins.formatting.stylua,
        },
      }
    end,
  },
}
