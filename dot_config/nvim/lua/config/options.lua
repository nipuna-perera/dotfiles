-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldnestmax = 1
vim.cmd([[ set nofoldenable ]])
vim.wo.relativenumber = true

vim.o.background = "dark"
vim.g.everforest_background = "hard"

vim.g.ai_cmp = false
