return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    build = function()
      require('nvim-treesitter.install').update { with_sync = true }
    end,
    config = function()
      require('treesitter-context').setup {
        patterns = {
          default = { '.+' },
          json = { 'pair' },
          yaml = { 'block_mapping_pair' },
        },
        exclude_patterns = {
          default = { 'program' },
          html = { 'fragment', 'raw_text' },
          lua = { 'block', 'chunk' },
          python = { 'module' },
          vim = { 'script_file' },
        },
      }
    end,
  },
}
