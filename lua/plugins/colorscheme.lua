return {
  {
    "Mofiqul/dracula.nvim",
    config = function()
      local dracula = require("dracula")
      dracula.setup({
        colors = {
          -- this colors are overriden because otherwise they would
          -- be basically unreadable.
          nontext = "#707887",
          comment = "#919fc9",
        },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
