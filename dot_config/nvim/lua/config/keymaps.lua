-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "Better Escape" })
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { noremap = true, silent = true, desc = "Better Escape" })
vim.keymap.set({ "v", "n", "s" }, "<leader>fs", "<cmd>w<cr><esc>", { desc = "Save File" })
-- vim.keymap.set({ "v", "n", "s" }, "<leader>uL", "<cmd>set number<cr><esc>", { desc = "Set Line Number (non-relative)" })
vim.keymap.set(
  "n",
  "<leader>gg",
  ":!tmux new-window -c " .. LazyVim.root.git() .. " -- lazygit<CR><CR>",
  { silent = true }
)
