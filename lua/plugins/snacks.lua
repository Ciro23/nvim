return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            include = {
              ".*",
            },
            layout = {
              layout = {
                width = 60,
                min_width = 60,
              },
            },
          },
        },
      },
    },
  },
}
