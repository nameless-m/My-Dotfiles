-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.component.html", "*.html" },
  callback = function()
    local path = vim.fn.expand("%:p")
    -- Check if we're in an Angular project
    if vim.fn.filereadable(vim.fn.getcwd() .. "/angular.json") == 1 then
      vim.bo.filetype = "htmlangular"
    end
  end,
})
