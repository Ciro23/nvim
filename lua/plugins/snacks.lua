return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          include = { ".*" },
          layout = {
            layout = {
              width = function()
                -- Size limits for the file explorer's window.
                local min_width = 25
                local max_width = 60
                local width_range = max_width - min_width

                -- Screen size limits.
                local min_columns = 80
                local max_columns = 200
                local columns_range = max_columns - min_columns

                local current_columns = vim.o.columns
                local ratio = math.min(1, (current_columns - min_columns) / columns_range)

                return math.floor(min_width + width_range * ratio)
              end,
              min_width = 20,
            },
          },
        },
      },
    },
  },
}
