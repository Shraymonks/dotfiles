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
        },
      },
    },
  },
}
