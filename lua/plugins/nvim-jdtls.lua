local home = vim.fn.expand("~")

return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = {
      settings = {
        java = {
          format = {
            settings = {
              url = "file:///" .. home .. "/.config/nvim/java-formatting-rules.xml",
              profile = "tino",
            },
          },
        },
      },
    },
  },
}
