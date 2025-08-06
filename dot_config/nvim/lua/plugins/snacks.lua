return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      exclude = {
        "package-lock.json",
        "pnpm-lock.yaml",
        "yarn.lock",
      },
      hidden = true,
      sources = {
        files = {
          hidden = true,
          actions = {
            calculate_file_truncate_width = function(self)
              local width = self.list.win:size().width
              self.opts.formatters.file.truncate = width - 6
            end,
          },
          win = {
            list = {
              on_buf = function(self)
                self:execute("calculate_file_truncate_width")
              end,
            },
            preview = {
              on_buf = function(self)
                self:execute("calculate_file_truncate_width")
              end,
              on_close = function(self)
                self:execute("calculate_file_truncate_width")
              end,
            },
          },
        },
      },
    },
  },
}
