-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dart",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    -- By default, "<leader>ff" and "<leader><leader>" search for files in the
    -- current working directory, based on the open file.
    local ff = vim.fn.maparg("<leader>ff", "n", false, true)

    -- By default, "<leader>fF" searches for files in the whole project.
    local fF = vim.fn.maparg("<leader>fF", "n", false, true)

    -- This behaviour is swapped, because pressing "<leader>ff" or
    -- "<leader><leader>" is faster then "<leader>fF", and I often want
    -- to search for files in the whole project.
    vim.keymap.set("n", "<leader>ff", fF.callback)
    vim.keymap.set("n", "<leader><leader>", fF.callback)
    vim.keymap.set("n", "<leader>fF", ff.callback)
  end,
})
