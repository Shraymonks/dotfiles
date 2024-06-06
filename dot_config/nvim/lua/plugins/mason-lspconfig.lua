return {
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      local mason_lsp = require 'mason-lspconfig'
      mason_lsp.setup {
        automatic_installation = true,
        ensure_installed = {
          'eslint',
          'pyright',
          'lua_ls',
        },
      }
      local lsp = require 'lspconfig'
      local coq = require 'coq'
      local on_attach = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set(
          'n',
          '<space>wa',
          vim.lsp.buf.add_workspace_folder,
          bufopts
        )
        vim.keymap.set(
          'n',
          '<space>wr',
          vim.lsp.buf.remove_workspace_folder,
          bufopts
        )
        vim.keymap.set('n', '<space>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, bufopts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
        vim.keymap.set('n', '<space>f', function()
          vim.lsp.buf.format { async = true }
        end, bufopts)
      end

      mason_lsp.setup_handlers {
        function(server_name) -- default handler (optional)
          lsp[server_name].setup(coq.lsp_ensure_capabilities {
            on_attach = function(client, bufnr)
              require('lsp-format').on_attach(client)
              on_attach(client, bufnr)
            end,
          })
        end,
        ['eslint'] = function()
          lsp.eslint.setup(coq.lsp_ensure_capabilities {
            on_attach = on_attach,
            settings = {
              typescript = {
                format = {
                  enable = false,
                },
              },
            },
          })
        end,
        ['pyright'] = function()
          lsp.pyright.setup(coq.lsp_ensure_capabilities {
            on_attach = on_attach,
            settings = {
              python = {
                format = {
                  enable = false,
                },
              },
            },
          })
        end,
        ['lua_ls'] = function()
          lsp.lua_ls.setup(coq.lsp_ensure_capabilities {
            on_attach = on_attach,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { 'vim' },
                },
                format = {
                  enable = false,
                },
              },
            },
          })
        end,
      }
    end,
  },
}
