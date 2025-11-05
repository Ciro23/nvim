local home = vim.fn.expand("~")

-- Function to dynamically collect all JAVA_HOME_X environment variable.
-- Since the Java path for each version available on the system is fetched via
-- env vars, please set all your versions in your ~/.bashrc file (for example).
-- example of ~/.bashrc:
-- export JAVA_HOME_17 = /path/to/java/17
-- export JAVA_HOME_21 = /path/to/java/21
local function get_java_runtimes()
  local runtimes = {}

  -- Get all environment variables
  local env_vars = vim.fn.environ()

  -- Loop through and find JAVA_HOME_X variables
  for var, path in pairs(env_vars) do
    local major_version = var:match("^JAVA_HOME_(%d+)$")
    if major_version then
      table.insert(runtimes, {
        name = "JavaSE-" .. major_version,
        path = path,
      })
    end
  end

  return runtimes
end

return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = {
      settings = {
        java = {
          eclipse = {
            downloadSources = true,
          },
          configuration = {
            runtimes = get_java_runtimes(),
          },
          format = {
            settings = {
              url = "file:///" .. home .. "/.config/nvim/java-formatting-rules.xml",
              profile = "tino",
            },
          },
          compile = {
            nullAnalysis = {
              mode = "automatic",
              nonnull = {
                "org.jspecify.annotations.NonNull",
              },
              nullable = {
                "org.jspecify.annotations.Nullable",
              },
            },
          },
        },
      },
    },
  },
}
