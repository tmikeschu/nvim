return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,
            exclude = { "node_modules" },
          },
          grep = {
            hidden = true,
            exclude = { "node_modules" },
          },
          explorer = {
            hidden = true,
          },
        },
      },
    },
  },
}
