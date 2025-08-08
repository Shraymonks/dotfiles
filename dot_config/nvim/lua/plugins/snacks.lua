local actions = function(offset)
  return {
    calculate_file_truncate_width = function(self)
      local width = self.list.win:size().width
      self.opts.formatters.file.truncate = width - offset
    end,
  }
end

local win = {
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
}

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
        buffers = {
          actions = actions(16),
          win = win,
        },
        files = {
          hidden = true,
          actions = actions(6),
          win = win,
        },
      },
    },
  },
}
