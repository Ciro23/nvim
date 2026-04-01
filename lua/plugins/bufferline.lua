return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      custom_filter = function(buf, _)
        -- Prevents directory buffers from appearing after restoring a session.
        local buf_name = vim.api.nvim_buf_get_name(buf)
        local state = vim.uv.fs_stat(buf_name)
        if state and state.type == "directory" then
          return false
        end

        return true
      end,
    },
  },
}
